
package com.byhealth.wechat.base.display.action;

import java.awt.image.BufferedImage;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.byhealth.common.utils.WebUtil;
import com.byhealth.wechat.config.AppConfig;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.byhealth.common.action.BaseController;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

@Controller("common")
@RequestMapping("/common")
public class CommonController extends BaseController {

    @Autowired
    private Producer kaptchaProducer;

    @RequestMapping("/loginTimeoutAjax")
    @ResponseBody
    public Map<String, String> loginTimeoutAjax() {
        Map<String, String> res = new HashMap<String, String>();
        res.put("code", "-1");
        res.put("msg", "登陆超时");
        return res;
    }

    @RequestMapping("/loginTimeout")
    public String loginTimeout() {
        return "redirect:/login";
    }

    @RequestMapping("/verification_code.jpg")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        response.setDateHeader("Expires", 0);
        // Set standard HTTP/1.1 no-cache headers.
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        // Set standard HTTP/1.0 no-cache header.
        response.setHeader("Pragma", "no-cache");
        // return a jpeg
        response.setContentType("image/jpeg");
        // create the text for the image
        String capText = kaptchaProducer.createText();
        logger.debug("生成验证码：" + capText);
        // store the text in the session
        request.getSession().setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);
        // create the image with the text
        BufferedImage bi = kaptchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        // write the data out
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
        return null;
    }

    @RequestMapping("/error")
    public String error(HttpServletRequest request) {
        String forward = "errorview";
        if (WebUtil.validAjax(request)) {
            forward = "errorajax";
        }
        return "forward:/common/" + forward;
    }

    @RequestMapping("/errorview")
    public String errorView(HttpServletRequest request, Map map) {
        logger.error("request error to errorview");
        map = getErrorMap(request);
        return "common/error/error-exception";
    }

    @RequestMapping("/errorajax")
    @ResponseBody
    public Map<String, String> errorAjax(HttpServletRequest request) {
        logger.error("request error to errorajax");
        return getErrorMap(request);
    }

    /**
     * 获得错误信息，封装到map
     * 
     * @param request
     * @return
     */
    private Map<String, String> getErrorMap(HttpServletRequest request) {
        Exception e = (Exception) request.getAttribute("ex");
        logger.error("request error", e);
        Map<String, String> map = new HashMap<String, String>();
        String errorMsg = (String) request.getAttribute(AppConfig.REQUEST_ERROE_MSG_KEY);
        if (StringUtils.isBlank(errorMsg)) {
            errorMsg = "操作失败";
            if (AppConfig.isTest()) {
                errorMsg = e.getMessage();
            }
        }
        map.put("code", "0");
        map.put("statue", "500");
        map.put("msg", errorMsg);
        return map;
    }

}

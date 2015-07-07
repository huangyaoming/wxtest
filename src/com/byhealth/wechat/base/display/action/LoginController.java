
package com.byhealth.wechat.base.display.action;

import com.byhealth.common.action.BaseController;
import com.byhealth.common.framework.system.exception.MyRuntimeException;
import com.byhealth.wechat.base.admin.entity.SysUserEntity;
import com.byhealth.wechat.base.admin.service.SysUserService;
import com.byhealth.wechat.config.AppConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * 用户登录
 */
@Controller
public class LoginController extends BaseController {

    @Autowired
    private SysUserService sysUserService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> signin(final HttpServletRequest request, final SysUserEntity user,
            final String valid_code) {
        setErrorMsg(request, "用户名或密码错误");
        Map<String, String> res = compareValidCode(request, valid_code);
        if ("0".equals(res.get("code"))) {
            return res;
        }
        SysUserEntity sysUser = sysUserService.signin(user.getUsername(), user.getPwd());
        logger.info("查询到登陆用户：" + sysUser);
        if (null == sysUser) {
            throw new MyRuntimeException("用户名或密码错误");
        }
        request.getSession().setAttribute(AppConfig.LOGIN_FLAG, sysUser);
        return retSuccess();
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/wechat/display/login";
    }

    @RequestMapping(value = "/loginout")
    public String loginOut(final HttpServletRequest request) {
        SysUserEntity sysUser = (SysUserEntity) request.getSession().getAttribute(
                AppConfig.LOGIN_FLAG);
        if (null != sysUser) {
            request.getSession().removeAttribute(AppConfig.LOGIN_FLAG);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/validEmail")
    @ResponseBody
    public String validEmail(String email) {
        boolean flag = sysUserService.validEmail(email);
        return flag + "";
    }

    @RequestMapping(value = "/validUser")
    @ResponseBody
    public String validUser(String username) {
        boolean flag = sysUserService.validUsername(username);
        return flag + "";
    }

}

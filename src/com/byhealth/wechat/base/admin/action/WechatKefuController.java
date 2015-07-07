package com.byhealth.wechat.base.admin.action;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.byhealth.common.action.BaseController;
import com.byhealth.common.framework.system.pagination.Pagination;
import com.byhealth.common.utils.WebUtil;
import com.byhealth.wechat.base.admin.entity.SysUserEntity;
import com.byhealth.wechat.base.admin.entity.WechatKefuAccountEntity;
import com.byhealth.wechat.base.admin.service.WechatKefuService;


/**
 * 情景码管理
 * @author fengjx xd-fjx@qq.com
 * @version RespMsgActionController.java 2014年10月4日
 */
@Controller
@RequestMapping("/admin/kefu")
public class WechatKefuController extends BaseController {
	
	@Autowired
	private WechatKefuService wechatKefuService;
	
	/**
	 * 情景码列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value="")
	public String kefu(HttpServletRequest request){
		return "/wechat/admin/kefu/kefu";
	}

	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(HttpServletRequest request, String ids){
		wechatKefuService.deleteQrcodesById(ids);
		return retSuccess();
	}
	/**
	 * 
	 * @param request
	 * @param actionEntity
	 * @return
	 */
	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> save(HttpServletRequest request, WechatKefuAccountEntity qrcodeEntity){
		setErrorMsg(request,"保存失败");
		Map<String, String> reqMap = WebUtil.getRequestParams(request);
		String id = qrcodeEntity.getId();
		qrcodeEntity.setIn_time(new Date());
		SysUserEntity sysUser = getLoginSysUser(request);
		qrcodeEntity.setSysUser(sysUser);
		if (StringUtils.isBlank(id)) {
			wechatKefuService.save(qrcodeEntity);
		}else {
			wechatKefuService.update(qrcodeEntity);
		}
		return retSuccess();
	}
	
	/**
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/pageList")
	@ResponseBody
	public Pagination<Map<String, Object>> pageList(HttpServletRequest request, WechatKefuAccountEntity qrcodeEntity){
		SysUserEntity sysUser = getLoginSysUser(request);
		Pagination<Map<String, Object>> pagination = wechatKefuService.pageList(qrcodeEntity , sysUser);
		return pagination;
	}
	
	
}

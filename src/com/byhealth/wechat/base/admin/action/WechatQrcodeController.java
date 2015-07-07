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
import com.byhealth.common.framework.system.exception.MyException;
import com.byhealth.common.framework.system.pagination.Pagination;
import com.byhealth.common.utils.WebUtil;
import com.byhealth.wechat.base.admin.entity.SysUserEntity;
import com.byhealth.wechat.base.admin.entity.WechatQrcodeEntity;
import com.byhealth.wechat.base.admin.service.WechatKefuService;
import com.byhealth.wechat.base.admin.service.WechatQrcodeService;
import com.byhealth.wechat.mysdk.beans.kf.KfAccount;


/**
 * 情景码管理
 * @author fengjx xd-fjx@qq.com
 * @version RespMsgActionController.java 2014年10月4日
 */
@Controller
@RequestMapping("/admin/qrcode")
public class WechatQrcodeController extends BaseController {
	
	@Autowired
	private WechatQrcodeService wechatQrcodeService;
	
	@Autowired
	private WechatKefuService wechatKefuService;
	
	/**
	 * 情景码列表
	 * @param request
	 * @return
	 */
	@RequestMapping(value="")
	public String qrcode(HttpServletRequest request){
		return "/wechat/admin/qrcode/qrcode";
	}

	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(HttpServletRequest request, String ids){
		//wechatQrcodeService.deleteQrcodesById(ids);
		SysUserEntity sysUser = getLoginSysUser(request);
		KfAccount  account = new KfAccount();
		account.setKf_account("xiehm001@weilakeji");
		account.setNickname("xiehm001");
		account.setPassword("318c5274e6716e141dd54e10af813b4d");
		try {
			wechatKefuService.addKfAccount(account, sysUser);
		} catch (MyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
	public Map<String, String> save(HttpServletRequest request, WechatQrcodeEntity qrcodeEntity){
		setErrorMsg(request,"保存失败");
		Map<String, String> reqMap = WebUtil.getRequestParams(request);
		String id = qrcodeEntity.getId();
		qrcodeEntity.setIn_time(new Date());
		SysUserEntity sysUser = getLoginSysUser(request);
		qrcodeEntity.setSysUser(sysUser);
		if (StringUtils.isBlank(id)) {
			wechatQrcodeService.save(qrcodeEntity);
		}else {
			wechatQrcodeService.update(qrcodeEntity);
		}
		return retSuccess();
	}
	
	/**
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/pageList")
	@ResponseBody
	public Pagination<Map<String, Object>> pageList(HttpServletRequest request, WechatQrcodeEntity qrcodeEntity){
		SysUserEntity sysUser = getLoginSysUser(request);
		Pagination<Map<String, Object>> pagination = wechatQrcodeService.pageList(qrcodeEntity , sysUser);
		return pagination;
	}
	
	
	/**
	 * 生成二维码
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/genQrcode")
	@ResponseBody
	public Map<String, String> genQrcode(HttpServletRequest request , String id) throws MyException {
		SysUserEntity sysUser = getLoginSysUser(request);
		try {
			WechatQrcodeEntity qrcodeEntity = wechatQrcodeService.load(id);
			String qrcodeUrl = wechatQrcodeService.genQrcode(qrcodeEntity , sysUser);
			return retSuccess(qrcodeUrl);
		} catch (MyException e) {
			setErrorMsg(request,e.getMessage());
			throw e;
		}
	}
	
}

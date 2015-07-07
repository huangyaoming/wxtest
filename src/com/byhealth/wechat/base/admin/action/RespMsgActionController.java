package com.byhealth.wechat.base.admin.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.byhealth.common.utils.WebUtil;
import com.byhealth.wechat.base.admin.service.WechatMenuService;
import com.byhealth.wechat.mysdk.constants.WechatRespMsgtypeConstants;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.byhealth.common.action.BaseController;
import com.byhealth.common.action.MyExecuteCallback;
import com.byhealth.common.framework.system.pagination.Pagination;
import com.byhealth.common.utils.CollectionUtil;
import com.byhealth.wechat.base.admin.entity.KeyWordActionView;
import com.byhealth.wechat.base.admin.entity.MaterialEntity;
import com.byhealth.wechat.base.admin.entity.RespMsgActionEntity;
import com.byhealth.wechat.base.admin.entity.SysUserEntity;
import com.byhealth.wechat.base.admin.entity.WechatMenuEntity;
import com.byhealth.wechat.base.admin.entity.WechatQrcodeEntity;
import com.byhealth.wechat.base.admin.service.ExtAppService;
import com.byhealth.wechat.base.admin.service.MaterialService;
import com.byhealth.wechat.base.admin.service.RespMsgActionService;
import com.byhealth.wechat.base.admin.service.WechatQrcodeService;


/**
 * 消息相应规则控制器
 * @author fengjx xd-fjx@qq.com
 * @version RespMsgActionController.java 2014年10月4日
 */
@Controller
@RequestMapping("/admin/action")
public class RespMsgActionController extends BaseController {
	
	@Autowired
	private RespMsgActionService actionService;
	@Autowired
	private WechatMenuService wechatMenuService;
	@Autowired
	private WechatQrcodeService wechatQrcodeService;
	@Autowired
	private MaterialService materialService;
	@Autowired
	private ExtAppService extAppService;
	
	/**
	 * 关键字回复界面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/keyword")
	public String keyword(HttpServletRequest request){
		return "/wechat/admin/msg_action/keyword_action";
	}
	
	/**
	 * 默认消息回复界面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/default")
	public String defaultAction(HttpServletRequest request){
		return "/wechat/admin/msg_action/default_action";
	}
	
	/**
	 * 粉丝关注回复界面
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/subscribe")
	public String subscribe(HttpServletRequest request){
		return "/wechat/admin/msg_action/subscribe_action";
	}
	
	/**
	 * LBS地理位置消息回复
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/lbs")
	public String lbs(HttpServletRequest request){
		return "/wechat/admin/msg_action/lbs_action";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(HttpServletRequest request, String ids){
		actionService.deleteMsgActionById(ids);
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
	public Map<String, String> save(HttpServletRequest request, RespMsgActionEntity actionEntity){
		setErrorMsg(request,"保存失败");
		Map<String, String> reqMap = WebUtil.getRequestParams(request);
		MaterialEntity materialEntity = getMaterial(reqMap);
		SysUserEntity sysUser = getLoginSysUser(request);
		if(null != materialEntity){
			materialEntity.setSysUser(sysUser);
			actionEntity.setMaterial(materialEntity);
		}
		actionEntity.setExtApp(extAppService.load(reqMap.get("extAppId")));
		actionEntity.setSysUser(sysUser);
		WechatQrcodeEntity qrcodeEntity = getWechatQrcode(reqMap);
		if(null != qrcodeEntity){
			qrcodeEntity.setSysUser(sysUser);
		}
		if(StringUtils.isNotBlank(actionEntity.getId())){
			actionService.updateAction(actionEntity , getWechatMenu(reqMap)   , qrcodeEntity , materialEntity);
		}else{
			actionService.saveAction(actionEntity   , getWechatMenu(reqMap)   , qrcodeEntity , materialEntity);
		}
		return retSuccess();
	}
	
	/**
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/pageList")
	@ResponseBody
	public Pagination<KeyWordActionView> pageList(HttpServletRequest request){
		SysUserEntity sysUser = getLoginSysUser(request);
		Pagination<KeyWordActionView> pagination = actionService.pageMsgAction(WebUtil.getRequestParams(request),sysUser);
		return pagination;
	}
	
	@RequestMapping(value="load")
	@ResponseBody
	public RespMsgActionEntity loadMsgAction(HttpServletRequest request, String ext_type, String req_type, String event_type, String key_word){
		return actionService.loadMsgAction(ext_type, req_type, event_type, key_word,getLoginSysUser(request));
	}
	
	/**
	 * 从请求参数中获得菜单对象
	 * @param reqMap
	 * @return
	 */
	private WechatMenuEntity getWechatMenu(Map<String, String> reqMap){
		WechatMenuEntity entity = null;
		if(CollectionUtil.isNotEmpty(reqMap) && StringUtils.isNotBlank(reqMap.get("menuId"))){
			entity = wechatMenuService.load(reqMap.get("menuId"));
			entity.setType(reqMap.get("menuType"));
			entity.setUrl(reqMap.get("menuUrl"));
		}
		return entity;
	}
	
	/**
	 * 从请求参数中获得菜单对象
	 * @param reqMap
	 * @return
	 */
	private WechatQrcodeEntity getWechatQrcode(Map<String, String> reqMap){
		WechatQrcodeEntity entity = null;
		if(CollectionUtil.isNotEmpty(reqMap) && StringUtils.isNotBlank(reqMap.get("sceneValue")) ){
			entity = StringUtils.isNotBlank(reqMap.get("qrcodeId")) ? wechatQrcodeService.load(reqMap.get("qrcodeId")) : new WechatQrcodeEntity();
			entity.setScene_value(reqMap.get("sceneValue"));
			entity.setName(reqMap.get("sceneName"));
		}
		return entity;
	}
	
	/**
	 * 从请求参数中获得素材对象
	 * @param reqMap
	 * @return
	 */
	private MaterialEntity getMaterial(Map<String, String> reqMap){
		MaterialEntity entity = null;
		if(CollectionUtil.isNotEmpty(reqMap) && StringUtils.isNotBlank(reqMap.get("materiaId"))){
			entity = materialService.load(reqMap.get("materiaId"));
		}
		if(CollectionUtil.isNotEmpty(reqMap) && StringUtils.isNotBlank(reqMap.get("materiaContent"))){
			entity = new MaterialEntity();
			entity.setContent(reqMap.get("materiaContent"));
			entity.setMsg_type(WechatRespMsgtypeConstants.RESP_MESSAGE_TYPE_TEXT);
		}
		return entity;
	}
}

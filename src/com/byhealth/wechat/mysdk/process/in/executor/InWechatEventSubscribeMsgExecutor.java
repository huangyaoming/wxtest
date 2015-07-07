
package com.byhealth.wechat.mysdk.process.in.executor;

import com.byhealth.wechat.base.admin.entity.WechatPublicAccountEntity;
import com.byhealth.wechat.base.admin.entity.WechatQrcodeEntity;
import com.byhealth.wechat.base.admin.entity.WechatUserEntity;
import com.byhealth.wechat.base.admin.entity.WechatUserGroupEntity;
import com.byhealth.wechat.base.admin.service.WechatQrcodeService;
import com.byhealth.wechat.base.admin.service.WechatUserService;
import com.byhealth.wechat.mysdk.api.ApiResult;
import com.byhealth.wechat.mysdk.api.ClientFactory;
import com.byhealth.wechat.mysdk.api.UserClient;
import com.byhealth.wechat.mysdk.beans.req.ReqEventMessage;
import com.byhealth.wechat.mysdk.constants.WechatReqEventConstants;
import com.byhealth.wechat.mysdk.constants.WechatReqMsgtypeConstants;
import com.byhealth.wechat.mysdk.context.WechatContext;
import com.byhealth.wechat.mysdk.tools.NameTool;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 * 用户关注消息处理器
 * 
 * @author fengjx xd-fjx@qq.com
 * @date 2014年9月11日
 */
public class InWechatEventSubscribeMsgExecutor extends InServiceExecutor {

    @Autowired
    private WechatUserService wechatUserService;
	@Autowired
	protected WechatQrcodeService wechatQrcodeService;

    @Override
    public String execute() throws Exception {
        ReqEventMessage eventMessage = new ReqEventMessage(WechatContext.getWechatPostMap());
        logger.info("进入用户关注消息处理器fromUserName=" + eventMessage.getFromUserName());
        String event = eventMessage.getEvent();

        WechatPublicAccountEntity  sysUserEntity  = WechatContext.getPublicAccount();
        WechatUserEntity user = new WechatUserEntity();
        user.setOpenid(eventMessage.getFromUserName());
        user.setSubscribe_time(new Date());
        user.setPublicAccountEntity(WechatContext.getPublicAccount());
		String appid 			= sysUserEntity.getApp_id();
		String appsecret 	= sysUserEntity.getApp_secret();
		String token 			= sysUserEntity.getToken();
        ApiResult userInfoResult  = ClientFactory.createUserClient(appid , appsecret , token ).getUserInfo(user.getOpenid());
		JSONObject jsonUserInfo = JSONObject.fromObject(userInfoResult.getJson());
		user.setLanguage(jsonUserInfo.getString("language"));
        user.setNickname(jsonUserInfo.getString("nickname"));
        user.setSex(jsonUserInfo.getString("sex"));
        user.setCountry(jsonUserInfo.getString("country"));
        user.setProvince(jsonUserInfo.getString("province"));
        user.setCity(jsonUserInfo.getString("city"));
        //user.setWechatUserGroupEntity(new WechatUserGroupEntity());
        user.setHeadimgurl(jsonUserInfo.getString("headimgurl"));
        jsonUserInfo.getString("groupid");
        
        wechatUserService.save(user);
        String sceneValue = eventMessage.getEventKey();
        if(StringUtils.isNotBlank(sceneValue) ){
        	logger.info(sceneValue);
        	WechatQrcodeEntity qrcode = wechatQrcodeService.loadBySceneValue(sceneValue.replace("qrscene_", "") ,WechatContext.getPublicAccount().getSysUser());
        	if(null !=qrcode && StringUtils.isNotBlank(qrcode.getScene_action())){//如果配置了相关情景码动作的
        		logger.info(qrcode.getScene_action());
            	return doAction(null, WechatReqMsgtypeConstants.REQ_MSG_TYPE_EVENT, WechatReqEventConstants.EVENT_TYPE_SCAN , qrcode.getScene_action());
            }
        }
        return doAction(null, WechatReqMsgtypeConstants.REQ_MSG_TYPE_EVENT, event, null);
    }

    @Override
    public String getExecutorName() {
        return NameTool.buildInServiceName(WechatReqMsgtypeConstants.REQ_MSG_TYPE_EVENT,
                WechatReqEventConstants.EVENT_TYPE_SUBSCRIBE);
    }

}

package com.byhealth.wechat.mysdk.process.in.executor;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.byhealth.wechat.base.admin.entity.WechatQrcodeEntity;
import com.byhealth.wechat.base.admin.service.WechatQrcodeService;
import com.byhealth.wechat.mysdk.beans.req.ReqEventMessage;
import com.byhealth.wechat.mysdk.constants.WechatReqEventConstants;
import com.byhealth.wechat.mysdk.constants.WechatReqMsgtypeConstants;
import com.byhealth.wechat.mysdk.context.WechatContext;
import com.byhealth.wechat.mysdk.tools.NameTool;

/**
 * 二维码扫描消息处理器
 * @author fengjx xd-fjx@qq.com
 * @date 2014年9月11日
 */
public class InWechatEventScanMsgExecutor extends InServiceExecutor {

	@Autowired
	protected WechatQrcodeService wechatQrcodeService;
	
	@Override
	public String execute() throws Exception {
		ReqEventMessage eventMessage = new ReqEventMessage(WechatContext.getWechatPostMap());
		logger.info("进入二维码扫描消息处理器fromUserName="+eventMessage.getFromUserName());
		String sceneValue = eventMessage.getEventKey();
		if(StringUtils.isNotBlank(sceneValue)){
			WechatQrcodeEntity qrcode = wechatQrcodeService.loadBySceneValue(sceneValue ,WechatContext.getPublicAccount().getSysUser());	
    		//增加判断如果情景码为空时，返回默认的回复。
			if(qrcode !=null && StringUtils.isNotBlank(qrcode.getScene_action())){
				return doAction(null, eventMessage.getMsgType(), eventMessage.getEvent() , qrcode.getScene_action());
			}
		}
		return null;
		//return doAction(null, eventMessage.getMsgType(), eventMessage.getEvent() , eventMessage.getEventKey());
	}

	@Override
	public String getExecutorName() {
		return NameTool.buildInServiceName(WechatReqMsgtypeConstants.REQ_MSG_TYPE_EVENT,
				WechatReqEventConstants.EVENT_TYPE_SCAN);
	}

}

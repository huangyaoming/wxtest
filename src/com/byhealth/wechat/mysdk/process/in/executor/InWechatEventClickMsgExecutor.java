package com.byhealth.wechat.mysdk.process.in.executor;

import com.byhealth.wechat.mysdk.constants.WechatReqEventConstants;
import com.byhealth.wechat.mysdk.constants.WechatReqMsgtypeConstants;
import com.byhealth.wechat.mysdk.context.WechatContext;
import com.byhealth.wechat.mysdk.tools.NameTool;
import com.byhealth.wechat.mysdk.beans.req.ReqEventMessage;

/**
 * 菜单点击消息处理器
 * @author fengjx xd-fjx@qq.com
 * @date 2014年9月11日
 */
public class InWechatEventClickMsgExecutor extends InServiceExecutor {

	@Override
	public String execute() throws Exception {
		ReqEventMessage eventMessage = new ReqEventMessage(WechatContext.getWechatPostMap());
		logger.info("进入菜单点击消息处理器fromUserName="+eventMessage.getFromUserName());
		return doAction(null, eventMessage.getMsgType(), eventMessage.getEvent(), eventMessage.getEventKey());
	}

	@Override
	public String getExecutorName() {
		return NameTool.buildInServiceName(WechatReqMsgtypeConstants.REQ_MSG_TYPE_EVENT,
				WechatReqEventConstants.EVENT_TYPE_CLICK);
	}

}

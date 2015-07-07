package com.byhealth.wechat.mysdk.process.in.executor;


import com.byhealth.wechat.mysdk.constants.WechatReqMsgtypeConstants;
import com.byhealth.wechat.mysdk.context.WechatContext;
import com.byhealth.wechat.mysdk.tools.NameTool;
import com.byhealth.wechat.mysdk.beans.req.ReqLocationMessage;

/**
 * 地理位置消息处理器
 * @author fengjx xd-fjx@qq.com
 * @date 2014年9月11日
 */
public class InWechatLocationMsgExecutor extends InServiceExecutor {
	
	
	@Override
	public String execute() throws Exception {
		ReqLocationMessage locationMessage = new ReqLocationMessage(WechatContext.getWechatPostMap());
		logger.info("进入地理位置消息处理器fromUserName="+locationMessage.getFromUserName());
		return doAction(null, WechatReqMsgtypeConstants.REQ_MSG_TYPE_LOCATION, null, null);
	}

	@Override
	public String getExecutorName() {
		return NameTool.buildInServiceName(WechatReqMsgtypeConstants.REQ_MSG_TYPE_LOCATION, null);
	}

}

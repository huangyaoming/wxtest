package com.byhealth.wechat.mysdk.process.in.executor;

import com.byhealth.wechat.mysdk.constants.WechatReqMsgtypeConstants;
import com.byhealth.wechat.mysdk.context.WechatContext;
import com.byhealth.wechat.mysdk.tools.NameTool;
import com.byhealth.wechat.mysdk.beans.req.ReqImageMessage;

/**
 * 图片消息处理器
 * @author fengjx xd-fjx@qq.com
 * @date 2014年9月11日
 */
public class InWechatImageMsgExecutor extends InServiceExecutor {

	@Override
	public String execute() {
		
		ReqImageMessage imageMessage = new ReqImageMessage(WechatContext.getWechatPostMap());
		logger.info("进入图片消息处理器fromUserName="+imageMessage.getFromUserName());
		
		return null;
	}

	@Override
	public String getExecutorName() {
		return NameTool.buildInServiceName(WechatReqMsgtypeConstants.REQ_MSG_TYPE_IMAGE, null);
	}

}

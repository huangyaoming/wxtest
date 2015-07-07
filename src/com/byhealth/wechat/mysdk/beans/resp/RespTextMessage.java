package com.byhealth.wechat.mysdk.beans.resp;


import com.byhealth.wechat.mysdk.constants.WechatRespMsgtypeConstants;

/**
 * 文本消息
 * @author fengjx
 * @date 2014年1月19日
 */
public class RespTextMessage extends RespBaseMessage {
	
	private static final long serialVersionUID = 4526432774592573050L;
	// 回复的消息内容
	private String Content;

	public RespTextMessage(){
		super.setMsgType(WechatRespMsgtypeConstants.RESP_MESSAGE_TYPE_TEXT);
	}


	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}
}
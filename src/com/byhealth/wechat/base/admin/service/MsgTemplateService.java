package com.byhealth.wechat.base.admin.service;

import com.byhealth.common.framework.base.service.IBaseAbstractService;
import com.byhealth.wechat.base.admin.entity.MsgTemplateEntity;


/**
 * 消息模板
 * @author fengjx xd-fjx@qq.com
 * @date 2014年11月7日
 */
public interface MsgTemplateService extends IBaseAbstractService<MsgTemplateEntity> {
	
	
	/**
	 * 根据key取出模板内容
	 * @param key
	 * @return
	 */
	public MsgTemplateEntity getMsgTemplateByKey(String key);
	
}

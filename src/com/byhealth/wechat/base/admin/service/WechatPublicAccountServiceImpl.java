package com.byhealth.wechat.base.admin.service;

import com.byhealth.wechat.base.admin.entity.WechatPublicAccountEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import com.byhealth.common.framework.base.service.impl.BaseAbstractService;


/**
 * 公众账号信息service实现
 * @author fengjx xd-fjx@qq.com
 * @version WechatPublicAccountServiceImpl.java 2014年10月5日
 */
@Service
public class WechatPublicAccountServiceImpl extends BaseAbstractService<WechatPublicAccountEntity> implements WechatPublicAccountService {
	
	/*
	 * (non-Javadoc)
	 * @see com.byhealth.wechat.base.web.admin.service.WechatPublicAccountService#getWechatPublicAccountByTicket(java.lang.String)
	 */
	@Override
	public WechatPublicAccountEntity getWechatPublicAccountByTicket(String ticket) {
		if(StringUtils.isBlank(ticket)){
			return null;
		}
		String hql = " from WechatPublicAccountEntity a where a.ticket = ? ";
		return findOneByHql(hql, ticket);
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.byhealth.wechat.base.web.admin.service.WechatPublicAccountService#getWechatPublicAccountBySysUserId(java.lang.String)
	 */
	@Override
	public WechatPublicAccountEntity getWechatPublicAccountBySysUserId(String sysUserId) {
		String hql = " from WechatPublicAccountEntity a where a.sysUser.id = ?";
		return findOneByHql(hql, sysUserId);
	}
	
	
	
	
}

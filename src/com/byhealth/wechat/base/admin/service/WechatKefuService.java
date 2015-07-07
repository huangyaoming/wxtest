package com.byhealth.wechat.base.admin.service;

import java.util.Map;

import com.byhealth.common.framework.base.service.IBaseAbstractService;
import com.byhealth.common.framework.system.exception.MyException;
import com.byhealth.common.framework.system.pagination.Pagination;
import com.byhealth.wechat.base.admin.entity.SysUserEntity;
import com.byhealth.wechat.base.admin.entity.WechatKefuAccountEntity;
import com.byhealth.wechat.base.admin.entity.WechatQrcodeEntity;
import com.byhealth.wechat.mysdk.api.ApiResult;
import com.byhealth.wechat.mysdk.beans.kf.KfAccount;

/**
 * 情景二维码
 * 
 * @author fengjx xd-fjx@qq.com
 * @version ExtAppService.java 2014年9月13日
 */
public interface WechatKefuService extends IBaseAbstractService<WechatKefuAccountEntity> {


	/**
	 * 分页查询
	 * 
	 * @param qrcode
	 * @return
	 */
	public Pagination<Map<String, Object>> pageList(WechatKefuAccountEntity qrcode ,SysUserEntity sysUser);

	public void deleteQrcodesById(String ids);
	
	/**
	 * 生成二维码
	 * @param sysUser
	 * @throws Exception 
	 */
    public void addKfAccount(KfAccount account , SysUserEntity sysUser) throws MyException;

	

	

}

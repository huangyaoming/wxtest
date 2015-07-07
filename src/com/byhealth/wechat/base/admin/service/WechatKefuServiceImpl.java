package com.byhealth.wechat.base.admin.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import com.byhealth.common.framework.base.service.impl.BaseAbstractService;
import com.byhealth.common.framework.system.exception.MyException;
import com.byhealth.common.framework.system.exception.MyRuntimeException;
import com.byhealth.common.framework.system.pagination.Pagination;
import com.byhealth.common.utils.CommonUtils;
import com.byhealth.wechat.base.admin.entity.SysUserEntity;
import com.byhealth.wechat.base.admin.entity.WechatKefuAccountEntity;
import com.byhealth.wechat.mysdk.api.ClientFactory;
import com.byhealth.wechat.mysdk.api.KfClient;
import com.byhealth.wechat.mysdk.api.QrcodeClient;
import com.byhealth.wechat.mysdk.beans.kf.KfAccount;

/**
 * 情景二维码
 * 
 * @author fengjx xd-fjx@qq.com
 * @version WechatQrcodeServiceImpl.java 2015年4月08日
 */
@Service
public class WechatKefuServiceImpl extends BaseAbstractService<WechatKefuAccountEntity> implements WechatKefuService {



	@Override
	public Pagination<Map<String, Object>> pageList(WechatKefuAccountEntity kefu , SysUserEntity sysUser) {
		   StringBuilder hql = new StringBuilder(" from WechatKefuAccountEntity k where k.sysUser = ? ");
	        List<Object> params = new ArrayList<Object>();
	        params.add(sysUser);
	        return pageByHql(hql.toString(), params);
	}

	@Override
	public void deleteQrcodesById(String ids) {
		if(null == ids || "".equals(ids)){
			throw new MyRuntimeException("ID为空，删除情景二维码失败");
		}
		String _ids[] = ids.split(",");
		if(null != _ids && _ids.length>0){
			for(String id : _ids){
				delete(id);
			}
		}else{
			delete(ids);
		}
	}

	@Override
	public void addKfAccount(KfAccount account , SysUserEntity sysUser) throws MyException {
		String appid = sysUser.getWechatPublicAccount().getApp_id();
		String appsecret = sysUser.getWechatPublicAccount().getApp_secret();
		String token = sysUser.getWechatPublicAccount().getToken();
		KfClient client = ClientFactory.createKfAccountClient(appid , appsecret , token);
		client.addKfAccount(account);
		
	}


}

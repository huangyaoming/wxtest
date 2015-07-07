package com.byhealth.wechat.base.admin.service;

import com.byhealth.common.framework.base.service.IBaseAbstractService;
import com.byhealth.common.framework.system.pagination.Pagination;
import com.byhealth.wechat.base.admin.entity.ReqMsgLogEntoty;
import com.byhealth.wechat.base.admin.entity.WechatPublicAccountEntity;


/**
 * 微信消息请求记录
 * @author fengjx xd-fjx@qq.com
 * @date 2014年10月30日
 */
public interface ReqMsgLogService extends IBaseAbstractService<ReqMsgLogEntoty> {

    /**
     * 分页查询
     * @param from_user_id 请求用户标识
     * @param wechatPublicAccount 公众账号
     * @return
     */
    public Pagination<ReqMsgLogEntoty> pageList(ReqMsgLogEntoty reqMsgLog, WechatPublicAccountEntity wechatPublicAccount);

}


package com.byhealth.wechat.base.admin.service;

import com.byhealth.common.framework.base.service.impl.BaseAbstractService;
import com.byhealth.common.framework.system.exception.MyRuntimeException;
import com.byhealth.common.framework.system.init.FreeMarkerUtil;
import com.byhealth.common.mail.service.MyEmailService;
import com.byhealth.common.mail.vo.SendMailVo;
import com.byhealth.common.utils.CommonUtils;
import com.byhealth.common.utils.PasswordUtil;
import com.byhealth.wechat.base.admin.entity.SysUserEntity;
import com.byhealth.wechat.config.AppConfig;
import com.byhealth.wechat.config.FtlFilenameConstants;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 系统用户管理
 * 
 * @author fengjx xd-fjx@qq.com
 * @version SysUserServiceImpl.java 2014年9月26日
 */
@Service("sysUserService")
public class SysUserServiceImpl extends BaseAbstractService<SysUserEntity> implements
        SysUserService {

    @Autowired
    private MyEmailService emailService;

    @Override
    public SysUserEntity signin(String username, String pwd) {
        String hql = "from SysUserEntity where username = ?";
        SysUserEntity sysUser = findOneByHql(hql, username);
        if (null != sysUser && sysUser.getPwd().equals(DigestUtils.md5Hex(pwd))) {
            return sysUser;
        }
        return null;
    }

    @Override
    public void register(SysUserEntity user) throws Exception {
        if (validUsername(user.getUsername())) {
            throw new MyRuntimeException("用户名已存在");
        }
        if (validEmail(user.getEmail())) {
            throw new MyRuntimeException("邮箱已被占用");
        }
        user.setPwd(DigestUtils.md5Hex(user.getPwd()));
        user.setIn_time(new Date());
        user.setIs_valid("0");
        user.setScore(0);
        user.setValid_uid(CommonUtils.getPrimaryKey());
        save(user);
        sendRegisterMail(user);
    }

    public void sendRegisterMail(SysUserEntity user) throws Exception {
        SendMailVo mail = new SendMailVo();
        mail.setType(SendMailVo.TYPE_HTML);
        mail.setToUser(user.getEmail());
        mail.setSubject("邮箱验证");
        Map<String, String> root = new HashMap<String, String>();
        root.put("userEmail", user.getEmail());
        root.put("validUrl",
                AppConfig.DOMAIN_PAGE + "/activate?ser=" + PasswordUtil.encode(user.getValid_uid()));
        mail.setContent(FreeMarkerUtil.process(root, FtlFilenameConstants.REGISTER_VALID_MAIN));
        //屏蔽发邮件
        //emailService.send(mail);
    }

    @Override
    public boolean validUsername(String username) {
        String hql = "from SysUserEntity u where u.username = ?";
        int total = getCount(hql, true, username);
        return total > 0;
    }

    @Override
    public boolean validEmail(String email) {
        String hql = "from SysUserEntity u where u.email = ?";
        int total = getCount(hql, true, email);
        return total > 0;
    }

    @Override
    public boolean activate(String ser) {
        String uid = PasswordUtil.decode(ser);
        String hql = "from SysUserEntity u where u.valid_uid = ?";
        SysUserEntity user = findOneByHql(hql, uid);
        if (null == user || SysUserEntity.IS_ALIVE.equals(user.getIs_valid())) {
            return false;
        }
        user.setIs_valid(SysUserEntity.IS_ALIVE);
        update(user);
        return true;
    }

}

package com.byhealth.wechat.base.admin.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import com.byhealth.common.bean.ToStringBase;
import com.byhealth.common.utils.CommonUtils;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * 菜单表实体
 * 
 * @author fengjx xd-fjx@qq.com
 * @date 2014年9月11日
 */
@Table(name = "wechat_qrcode")
@Entity
@JsonIgnoreProperties(value = { "hibernateLazyInitializer", "handler", "sysUser" })
public class WechatKefuAccountEntity extends ToStringBase {

	private static final long serialVersionUID = 803834085197362915L;
	private String id;
	private String kefu_id; // 客服id
	private String kefu_account; // 客服账户
	private String kf_nick; // 客服呢称
	private String kf_headimgurl; // 客服头像url
	private Date in_time; // 添加时间
	private Date update_time;			//修改时间
	private SysUserEntity sysUser; // 用户

	@Id
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	@Column(length = 32)
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getKefu_id() {
		return kefu_id;
	}

	public void setKefu_id(String kefu_id) {
		this.kefu_id = kefu_id;
	}

	public String getKefu_account() {
		return kefu_account;
	}

	public void setKefu_account(String kefu_account) {
		this.kefu_account = kefu_account;
	}

	public String getKf_nick() {
		return kf_nick;
	}

	public void setKf_nick(String kf_nick) {
		this.kf_nick = kf_nick;
	}

	public String getKf_headimgurl() {
		return kf_headimgurl;
	}

	public void setKf_headimgurl(String kf_headimgurl) {
		this.kf_headimgurl = kf_headimgurl;
	}

	@Temporal(TemporalType.TIMESTAMP)
	public Date getIn_time() {
		return in_time;
	}

	public void setIn_time(Date in_time) {
		this.in_time = in_time;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

	@ManyToOne
	@JoinColumn(name = "user_id")
	public SysUserEntity getSysUser() {
		return sysUser;
	}

	public void setSysUser(SysUserEntity sysUser) {
		this.sysUser = sysUser;
	}

	@Transient
	public String getStr_in_time() {
		return CommonUtils.date2String(in_time);
	}
	
	@Transient
	public String getStr_update_time() {
		return CommonUtils.date2String(update_time);
	}

}

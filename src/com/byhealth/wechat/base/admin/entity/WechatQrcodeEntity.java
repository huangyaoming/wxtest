package com.byhealth.wechat.base.admin.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.byhealth.common.bean.ToStringBase;
import com.byhealth.common.utils.CommonUtils;

/**
 * 菜单表实体
 * 
 * @author fengjx xd-fjx@qq.com
 * @date 2014年9月11日
 */
@Table(name = "wechat_qrcode")
@Entity
@JsonIgnoreProperties(value = { "hibernateLazyInitializer", "handler", "sysUser" })
public class WechatQrcodeEntity extends ToStringBase {

	private static final long serialVersionUID = 803834085197362915L;
	private String id;
	private String scene_value; // 情景值
	private String name; // 情景名称
	private String scene_action; // 场景动作
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

	@Column(unique = true)
	public String getScene_value() {
		return scene_value;
	}

	public void setScene_value(String scene_value) {
		this.scene_value = scene_value;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getScene_action() {
		return scene_action;
	}

	public void setScene_action(String scene_action) {
		this.scene_action = scene_action;
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

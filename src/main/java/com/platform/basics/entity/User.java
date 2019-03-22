package com.platform.basics.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Transient;

import com.platform.basics.base.BaseModel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 系统用户实体
 * @author  XiangYiQian
 * @date    2018-11-14 08:44:09
 */
@Setter
@Getter
@ToString
public class User extends BaseModel{

    /**
	 * 
	 */
	private static final long serialVersionUID = 9215813305634913763L;

	/**用户账号*/
    private String account;

    /**密码*/
    private String password;

    /**用户名称*/
    private String userName;

    /**性别*/
    private Integer sex;

    /**年龄*/
    private int age;

    /**身份证号*/
    private String idCardNo;

    /**出生日期*/
    private Date birthday;

    /**邮箱*/
    private String mail;

    /**住址-省*/
    private String addressProvincial;

    /**住址-市*/
    private String addressCity;

    /**住址-区县*/
    private String addressCounty;

    /**详细地址*/
    private String detailedAddress;

    /**图标*/
    private String icon;
    
    /**是否启用用户 1启用 0未启用*/
    private Integer enabled;
    
    /**最近登陆时间*/
    private Date latelySignInTime;
    
    /**用户对应的角色*/
    @Transient
    private List<SysRole> sysRoles;
    
    
    
}

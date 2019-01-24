package com.platform.basics.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

/**
 * .在线用户信息 
 * @author 	XiangYiQian
 * @date	2019-1-14 13:50:39
 */
@Data
public class UserOnLine implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**session id*/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	
	/**userId*/
	private String userId;
	
	/**userName*/
	private String userName;
	
	/**用户主机地址*/
	private String host;
	
	/**状态*/
	private String status;
	
	/** session创建时间*/
	private Date startTimestamp;

	/** session最后访问时间 */
	private Date lastAccessTime;

	/**超时时间*/
	private Long timeout;

	/**所在地*/
	private String location;

}

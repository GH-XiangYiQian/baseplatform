package com.platform.basics.base;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * 基础类
 * @author  XiangYiQian
 * @date    2018-11-14 08:45:29
 */
@Data
@ToString
public class BaseModel implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -5814272550215866161L;

	/**id*/
    private Integer id;

    /**创建时间*/
    private Date gmtCreate;

    /**更新时间*/
    private Date gmtModified;

}

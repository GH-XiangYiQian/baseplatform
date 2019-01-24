package com.platform.basics.vo;

import lombok.Data;

/**
 * .菜单路由
 * @author 	XiangYiQian
 * @date	2019-1-14 17:17:27
 */
@Data
public class MenuVo {
	private String name;

    private String path;

    private String component;

    private String iframe;
}

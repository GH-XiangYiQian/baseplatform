package com.platform.basics.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.SysLog;
import com.platform.basics.service.SysLogService;
import com.platform.basics.util.PageData;

@RestController
@RequestMapping(value="/syslog")
public class SysLogController {
	
	@Autowired
	private SysLogService sysLogService;
	
	@OperationLog("查看日志")
	@RequestMapping(value="/list")
	public List<SysLog> getList(SysLog sysLog, PageData pageData) {
		return sysLogService.getList(sysLog, pageData);
	}
}

package com.platform.basics.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.SysMenu;
import com.platform.basics.entity.SysRole;
import com.platform.basics.entity.User;
import com.platform.basics.service.SysMenuService;
import com.platform.basics.service.SysRoleService;
import com.platform.basics.util.Base64Utils;
import com.platform.basics.util.HttpContextUtils;
import com.platform.basics.util.ResponseEntity;
import com.platform.basics.util.ValidateCode;

import lombok.extern.slf4j.Slf4j;

/**
 * 用户登陆
 * @author 	XiangYiQian
 * @date	2018-11-21 15:40:13
 * @update	2018-11-21 15:40:13
 * @version	1.0
 */
@Slf4j
@RestController
public class UserLoginController {
	
	@Autowired
	private SysRoleService sysRoleService;
	
	@Autowired
	private SysMenuService sysMenuService;
	/**
	 * 验证码
	 * @author	XiangYiQian
	 * @param	request
	 * @param	response
	 * @date	2018-11-26 11:45:35
	 * @update	2018-11-26 11:45:35
	 * @return	String(Image格式base64)
	 */
	@RequestMapping(value = "/validatecode")
	public Map<String, Object> validateCode(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> resultMap =new HashMap<>();
		//Map<String,Object> mapImage = PictureCheckCode.generateCodeAndPic();
		//String result = Base64Utils.imageToBase64((BufferedImage)mapImage.get("codePic"));
		ValidateCode validateCode = new ValidateCode();
		String result = Base64Utils.imageToBase64(validateCode.getImage());
		resultMap.put("result", result);
		resultMap.put("validateCode", validateCode.getText());
		return resultMap;
	}
	
	/**
	 * 验证码下载
	 * @throws FileNotFoundException 
	 * 
	 */
	@RequestMapping(value = "/image")
	public String downImage(HttpServletRequest request, HttpServletResponse response) throws FileNotFoundException {
		ValidateCode validateCode = new ValidateCode();
		BufferedImage buffer = validateCode.getImage();
		try {
			ImageIO.write(buffer, "png", new File("D:\\filelist\\image\\" + "test.png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "123";
	}
	
	/**
	 * 用户登陆
	 * @author 	XiangYiQian
	 * @param 	request
	 * @param 	response
	 * @param 	user
	 */
	@OperationLog("用户登陆")
	@RequestMapping(value = "login")
	public ResponseEntity<User> userLogin(HttpServletRequest request, HttpServletResponse response, User user) {
		ResponseEntity<User> resp = new ResponseEntity<>() ;
		UsernamePasswordToken token = new UsernamePasswordToken(user.getAccount(), user.getPassword(), false);
		Subject subject = SecurityUtils.getSubject();
		try {
			subject.login(token);
			resp = new ResponseEntity<>(null,200,"登陆成功");
		} catch (AuthenticationException e) {
			log.error("===========================================>>>>>>用户登陆认证失败：{}",e.getMessage());
			resp.error(e.getMessage());
		}
		return resp;
	}
	
	/**
	 * 用户登陆成功跳转至首页
	 * @author	XiangYiQian
	 * @date	2018-12-3 08:59:44
	 * @update	2018-12-3 08:59:51
	 * @return	ModelAndView
	 */
	@RequestMapping(value = "/index")
	public ModelAndView index() {
		User user  = (User) SecurityUtils.getSubject().getPrincipal();
		HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
		List<SysRole> roles = sysRoleService.findSysRoleByUserId(user.getId());
		List<SysMenu> menus = sysMenuService.findSysMenuByRoles(roles);
		request.setAttribute("user", user);
		request.setAttribute("menus", menus);
		ModelAndView mav = new ModelAndView("/index");
		return mav;
	}

}

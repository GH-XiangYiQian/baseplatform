package com.platform.basics.util;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

import javax.imageio.ImageIO;

import lombok.extern.slf4j.Slf4j;
import sun.misc.BASE64Encoder;
import sun.net.www.protocol.http.HttpURLConnection;

/**
 * 将图片转换为base64编码
 * 
 * @author 	XiangYiQian
 * @date	2018-11-26 10:47:31
 * @update	2018-11-26 10:47:31
 * @version	1.0
 */
@SuppressWarnings("restriction")
@Slf4j
public class Base64Utils {
	
	private final static String BASE64FORMAT = "data:image/png;base64,";
	/**
	 * 将BufferedImage转换为Base64
	 * @author 	XiangYiQian
	 * @param 	bufferedImage
	 * @date	2018-11-26 10:51:12
	 * @update	2018-11-26 10:51:12
	 * @return 	String
	 */
	public static String imageToBase64(BufferedImage bufferedImage) {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		try {
			ImageIO.write(bufferedImage, "png", bos);
			byte[] bytes = bos.toByteArray();
			BASE64Encoder encoder = new BASE64Encoder();
			String base64 = encoder.encode(bytes).trim();
			base64 = base64.replaceAll("\r", "").replaceAll("\n", "");
			log.debug("将BufferedImage转换为Base64编码");
			return BASE64FORMAT+base64;
		} catch (IOException e) {
			log.error("BufferedImage转换为Base64出现异常{}",e.getMessage());
		}
		return null;
	} 
	
	/**
	 * 将本地图片转换为base64编码
	 * @author 	XiangYiQian
	 * @param 	imagePath
	 * @date	2018-11-26 11:19:05
	 * @update	2018-11-26 11:19:05
	 * @return	String
	 */
	public static String imageToBase64(String imagePath) {
		BASE64Encoder encoder = new BASE64Encoder();
		InputStream is = null;
		byte[] data = null;
		try {
			is = new FileInputStream(imagePath);
			data = new byte[is.available()];
			is.read(data);
			is.close();
		} catch (IOException e) {
			log.error("将图片转换为Base64出现异常{}",e.getMessage());
		}
		return encoder.encode(data);
	}
	
	/**
	 * 在线图片转换为Base64
	 * @author 	XiangYiQian
	 * @param	url
	 * @date	2018-11-26 11:29:15
	 * @update	2018-11-26 11:29:15
	 * @return	String
	 */
	public static String imageToBase64Online(String image) {
		BASE64Encoder encoder = new BASE64Encoder();
		ByteArrayOutputStream data = new ByteArrayOutputStream();
		try {
			// 创建URl
			URL url = new URL(image);
			byte[] by = new byte[1024];
			// 获取链接
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setConnectTimeout(5000);
			InputStream is = conn.getInputStream();
			int len = -1;
			while ((len = is.read(by)) != -1) {
				data.write(by,0,len);
			}
			is.close();
			log.info("将图片转换为Base64编码");
		} catch (MalformedURLException e) {
			log.error("在线图片转换为Base64出现异常{}",e.getMessage());
		} catch (IOException ex) {
			log.error("在线图片转换为Base64出现异常{}",ex.getMessage());
		}
		return encoder.encode(data.toByteArray());
	}
}

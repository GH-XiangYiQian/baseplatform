package com.platform.basics.util.convert;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;


/**
 * 用途
 * Map与java对象之间的转换
 * java对象设置属性
 * 对象与对象之间的相互转换
 * 克隆对象
 * 复制对象
 * @author 	XiangYiQian
 * @date	2018-11-19 16:54:59
 * @update	2018-11-19 16:54:59
 */
public class BeanUtils {
	/**
	 * 对象之间的转换(浅度的转换)
	 * @author 	XiangYiQian
	 * @param	bean 	需要赋值的对象
	 * @param	value	参数对象
	 * @return 
	 * @date	2018-11-19 17:05:05
	 * @return	Object
	 */
	public static void convertBean(Object bean, Object value) {
		Class<?> clazz = bean.getClass();
		Class<?> claxx = value.getClass();
		Field[] beanField = clazz.getDeclaredFields();
		Field[] valueField = claxx.getDeclaredFields();
		for (int i = 0; i < valueField.length; i++ ) {
			Field vfield =  valueField[i];
			for (int k = 0; k < beanField.length; k ++) {
				if (vfield.getType().getName().equals(beanField[k].getType().getName()) &&
						vfield.getName().equals(beanField[k].getName())) {
					try {
						vfield.setAccessible(true);
						beanField[k].setAccessible(true);
						beanField[k].set(bean, vfield.get(value));
					} catch (IllegalArgumentException e) {
						e.printStackTrace();
					} catch (IllegalAccessException e) {
						e.printStackTrace();
					}
					break;
				}
			}
		}
		System.err.println(bean);
	}
	
	/**
	 * .java轻质类型转换
	 * @author 	XiangYiQian
	 * @param 	<T>
	 * @param 	clazz 目标类型
	 * @param 	obj	  目标值
	 * @date	2019-5-8 19:58:51
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static <T> T convertClass(Class<T> clazz, Object obj) {
		return (T)obj;
	}
	
	/**
	 * .java强制类型转换
	 * @author 	XiangYiQian
	 * @param 	<T>
	 * @param 	clazz 目标类型
	 * @param 	obj	  目标值
	 * @date	2019-5-8 19:59:00
	 * @return
	 */
	public static <T> T castClass(Class<T> clazz, Object obj) {
		return clazz.cast(obj);
	}
	
	/**
	 * .复制对象属性
	 * @author 	XiangYiQian
	 * @param   v_obj	目标对象
	 * @param	i_Obj	复制属性的对象
	 * @date	2019-5-15 10:26:04
	 * 
	 */
	public static void copyProperties(Object v_obj, Object i_Obj) {
		
		try {
			org.apache.commons.beanutils.BeanUtils.copyProperties(v_obj, i_Obj);
		} catch (IllegalAccessException e) {		
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
	}
	
	
}

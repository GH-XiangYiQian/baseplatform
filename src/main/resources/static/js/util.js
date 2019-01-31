
/**
 * 只允许输入整数或小数
 * @author 	XiangYiQian
 * @param value
 * @returns
 */
function decimalValue(value) {
	var str = value;
	var len1 = str.substr(0, 1);
	var len2 = str.substr(1, 1);
	//如果第一位是0，第二位不是点，就用数字把点替换掉
	if (str.length > 1 && len1 == 0 && len2 != ".") {
	  str = str.substr(1, 1);
	}
	//第一位不能是.
	if (len1 == ".") {
	  str = "";
	}
	//限制只能输入一个小数点
	if ((str.split('.')).length-1>1) {
    	str = str.substr(0,str.length-1);
    }
	//正则替换，保留数字和小数点
	str = str.replace(/[^\d^\.]+/g,'')
	return str;
}
/**
 * 只允许输入数字
 * @author 	XiangYiQian
 * @param 	value
 * @returns	
 */
function numberValue(value) {
	value = value.replace(/[^\d]+/g,'')
	return value;
}
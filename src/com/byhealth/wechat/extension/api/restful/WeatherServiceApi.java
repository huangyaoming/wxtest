package com.byhealth.wechat.extension.api.restful;

import com.byhealth.common.utils.WebUtil;
import com.byhealth.wechat.mysdk.tools.WeChatUtil;
import org.apache.log4j.Logger;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * 天气预报接口
 * @author fengjx xd-fjx@qq.com
 * @date 2014年11月8日
 */
public class WeatherServiceApi {
	
	private static final Logger logger = Logger.getLogger(WeatherServiceApi.class);
	
	//测试
	public static void main(String[] args) {
		System.out.println(queryhWeather("116.305145,39.982368"));
		System.out.println(queryhWeather("广州"));
	}
	
	/**
	 * 天气查询
	 * @param location 地点或者经纬度
	 * @return
	 */
	public static String queryhWeather(String location) {
		String res = null;
		// 组装查询地址
		String requestUrl = "http://api.map.baidu.com/telematics/v3/weather?location={LOCATION}&output=json&ak=899166509d1c7898bbad044a910bffa0";
		// 查询并解析结果
		try {
			requestUrl = requestUrl.replace("{LOCATION}", WebUtil.urlEncode(location, "UTF-8"));
			logger.info("天气查询URL="+requestUrl);
			// 查询并获取返回结果
			String json = WeChatUtil.httpRequest(requestUrl,"GET",null);
			logger.info("天气查询 json result {} "+ json);
			JSONObject jsonObject = JSONObject.fromObject(json);
			// 取出天气情况
			if(null != jsonObject && "0".equals(jsonObject.getString("error"))){
				String cityName = jsonObject.getJSONArray("results").getJSONObject(0).getString("currentCity");
				JSONArray jsonArray =  jsonObject.getJSONArray("results").getJSONObject(0).getJSONArray("weather_data");
				res = cityName+"天气情况\r\n";
				for(int i = 0; i < jsonArray.size() && i<5; i++){
					JSONObject object = jsonArray.getJSONObject(i);
					res += "\r\n时间："+object.getString("date");
					res += "\r\n天气状况："+object.getString("weather");;
					res += "\r\n风力："+object.getString("wind");;
					res += "\r\n温度："+object.getString("temperature");;
					res += "\r\n==============";
				}
			}
			if(null == res){
				res = "龙王休息了，请稍后再试。。。";
			}
		} catch (Exception e) {
			res = "龙王休息了，请稍后再试。。。";
			logger.error("调用天气查询接口异常",e);
		}
		return res;
	}
	
	/** 
     * 天气预报操作指南 
     * @return 
     */  
    public static String getWeatherUsage() {  
        StringBuffer buffer = new StringBuffer();  
        buffer.append("天气预报操作指南").append("\n\n");  
        buffer.append("1：天气+城市名称").append("\n");  
        buffer.append("例如：天气广州").append("\n");  
        buffer.append("2：直接发送地理位置，查询天气").append("\n");  
        buffer.append("回复：“?”显示主菜单");  
        return buffer.toString();  
    }
	
	
}

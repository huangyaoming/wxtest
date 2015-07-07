package com.byhealth.wechat.mysdk.tools;

import com.byhealth.wechat.mysdk.beans.resp.Article;
import com.byhealth.wechat.mysdk.beans.resp.RespMusicMessage;
import com.byhealth.wechat.mysdk.beans.resp.RespNewsMessage;
import com.byhealth.wechat.mysdk.beans.resp.RespTextMessage;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.core.util.QuickWriter;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;
import com.thoughtworks.xstream.io.xml.PrettyPrintWriter;
import com.thoughtworks.xstream.io.xml.XppDriver;
import org.apache.commons.lang3.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import javax.servlet.http.HttpServletRequest;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 消息处理工具类
 * @author fengjx
 * @date 2014年1月19日
 */
public final class MessageUtil {
	
	/**
	 * 解析微信发来的请求（XML）
	 * @param request
	 * @return
	 * @throws java.io.IOException
	 * @throws org.dom4j.DocumentException
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, String> parseXml(HttpServletRequest request) throws IOException, DocumentException {
		// 将解析结果存储在HashMap中
		Map<String, String> map = new HashMap<String, String>();
		// 从request中取得输入流
		InputStream inputStream = null;
		try {
			inputStream = request.getInputStream();
			if(null != inputStream){
				// 读取输入流
				SAXReader reader = new SAXReader();
				Document document = reader.read(inputStream);
				// 得到xml根元素
				Element root = document.getRootElement();
				// 得到根元素的所有子节点
				List<Element> elementList = root.elements();
				// 遍历所有子节点
				for (Element e : elementList){
					map.put(e.getName(), e.getText());
				}
				map.put("xml", document.asXML());
			}
		} catch (IOException e) {
			throw e;
		} catch (DocumentException e) {
			throw e;
		}finally{
			if(null != inputStream){
				try {
					// 释放资源
					inputStream.close();
				} catch (IOException e) {
					throw new IOException("inputStream 未正常关闭",e);
				}finally{
					inputStream = null;
				}
			}
		}
		return map;
	}

	/**
	 * 文本消息对象转换成xml
	 * @param textMessage 文本消息对象
	 * @return xml
	 */
	public static String textMessageToXml(RespTextMessage textMessage) {
		String tmp = textMessage.getContent();
		if(getByteSize(tmp) > 2047){
			textMessage.setContent(new String(tmp.getBytes(), 0, 2040));
		}
		xstream.alias("xml", textMessage.getClass());
		return xstream.toXML(textMessage);
	}

	/**
	 * 文本消息转换成xml
	 * @return xml
	 */
	public static String textMessageToXml(String text) {
		RespTextMessage textMessage = new RespTextMessage();
		textMessage.setContent(text);
		if(getByteSize(text) > 2047){
			textMessage.setContent(new String(text.getBytes(), 0, 2040));
		}
		xstream.alias("xml", textMessage.getClass());
		return xstream.toXML(textMessage);
	}



	/**
	 * 音乐消息对象转换成xml
	 * @param musicMessage 音乐消息对象
	 * @return xml
	 */
	public static String musicMessageToXml(RespMusicMessage musicMessage) {
		xstream.alias("xml", musicMessage.getClass());
		return xstream.toXML(musicMessage);
	}

	/**
	 * 图文消息对象转换成xml
	 * @param newsMessage 图文消息对象
	 * @return xml
	 */
	public static String newsMessageToXml(RespNewsMessage newsMessage) {
		xstream.alias("xml", newsMessage.getClass());
		xstream.alias("item", new Article().getClass());
		return xstream.toXML(newsMessage);
	}

	/**
	 * 扩展xstream，使其支持CDATA块
	 * @date 2014年1月19日
	 */
	private static XStream xstream = new XStream(new XppDriver() {
		@Override
		public HierarchicalStreamWriter createWriter(Writer out) {
			return new PrettyPrintWriter(out) {
				// 对所有xml节点的转换都增加CDATA标记
				boolean cdata = true;

				public void startNode(String name, Class clazz) {
					super.startNode(name);
				}

				protected void writeText(QuickWriter writer, String text) {
					if (cdata) {
						writer.write("<![CDATA[");
						writer.write(text);
						writer.write("]]>");
					} else {
						writer.write(text);
					}
				}
			};
		}
	});
	
	
	/** 
	 * 计算采用utf-8编码方式时字符串所占字节数 
	 *  
	 * @param content 
	 * @return 
	 */  
	public static int getByteSize(String content) {  
	    int size = 0;  
	    if (null != content) {  
	        try {  
	            // 汉字采用utf-8编码时占3个字节  
	            size = content.getBytes("utf-8").length;  
	        } catch (UnsupportedEncodingException e) {  
	            e.printStackTrace();  
	        }  
	    }  
	    return size;  
	}
	
	/**
	 * 替换响应消息中的参数
	 * @param msg
	 * @param reqMsgMap
	 * @return
	 */
	public static String replaceMsgParam(String msg, Map<String, String> reqMsgMap){
		if(StringUtils.isBlank(msg)){
			return "";
		}
		String res = "";
		res = StringUtils.replaceEach(msg, 
				new String[]{
					"{#ToUserName#}",
					"{#FromUserName#}",
					"{#CreateTime#}"
				},
				new String[]{
					reqMsgMap.get("FromUserName"),
					reqMsgMap.get("ToUserName"),
					new Date().getTime()+""
				});

		return res;
	}

	/**
	 * 替换响应消息中的参数(正在表达式来处理)
	 * @param msg
	 * @param reqMsgMap
	 * @return
	 */
	public static String replaceMsgByReg(String msg, Map<String, String> reqMsgMap){
		if(StringUtils.isBlank(msg)){
			return "";
		}
		String res = "";
		res = msg.replaceAll("\\<ToUserName>(.*?)\\</ToUserName>", "<ToUserName><![CDATA[" + reqMsgMap.get("FromUserName") + "]]></ToUserName>")
				.replaceAll("\\<FromUserName>(.*?)\\</FromUserName>", "<FromUserName><![CDATA[" + reqMsgMap.get("ToUserName") + "]]></FromUserName>")
				.replaceAll("\\<CreateTime>(.*?)\\</CreateTime>", "<CreateTime><![CDATA[" + new Date().getTime() + "]]></CreateTime>");
		return res;
	}




	/**
	 * emoji表情转换(hex -> utf-16)
	 * @param hexEmoji
	 * @return
	 */
	public static String emoji(int hexEmoji) {
		return String.valueOf(Character.toChars(hexEmoji));
	}

	/**
	 * 将微信消息中的CreateTime转换成标准格式的时间（yyyy-MM-dd HH:mm:ss）
	 * CreateTime，表示1970年1月1日0时0分0秒至消息创建时所间隔的秒数，不是毫秒数！
	 * @param createTime 消息创建时间
	 * @return
	 */
	public static String formatCreateTime(String createTime) {
		// 将微信传入的CreateTime转换成long类型，再乘以1000
		long msgCreateTime = Long.parseLong(createTime) * 1000L;
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(new Date(msgCreateTime));
	}
}
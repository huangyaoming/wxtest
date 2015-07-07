package com.byhealth.wechat.base.admin.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.byhealth.common.framework.system.pagination.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.byhealth.common.action.BaseController;
import com.byhealth.wechat.base.admin.entity.ExtAppEntity;
import com.byhealth.wechat.base.admin.service.ExtAppService;


/**
 * 应用扩展
 * @author fengjx xd-fjx@qq.com
 * @version ExtAppController.java 2014年9月13日
 */
@Controller
@RequestMapping("/admin/extapp")
public class ExtAppController extends BaseController {
	
	@Autowired
	private ExtAppService extAppService;
	
	@RequestMapping(value={"","/"})
	public String view(HttpServletRequest request) {
		return "/wechat/admin/sys/busiapp";
	}
	
	/**
	 * 查询接口列表
	 * @param app_type
	 * @param msg_type
	 * @param event_type
	 * @return
	 */
	@RequestMapping(value="/list")
	@ResponseBody
	public List<ExtAppEntity> listByType(String app_type, String msg_type, String event_type){
		List<ExtAppEntity> list = extAppService.listByType(app_type,msg_type,event_type);
		return list;
	}


	/**
	 * 分页查询
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/pageList")
	@ResponseBody
	public Pagination<ExtAppEntity> pageList(HttpServletRequest request, ExtAppEntity extApp){
		return extAppService.pageList(extApp);
	}


	/**
	 * 添加或修改
	 * @param extApp
	 * @param reqTypes
	 * @param eventTypes
	 * @return
	 */
	@RequestMapping(value="/save")
	@ResponseBody
	public Map<String,String> saveOrUpdate(ExtAppEntity extApp, String reqTypes, String eventTypes){
		extAppService.saveOrUpdateApp(extApp, reqTypes, eventTypes);
		return retSuccess();
	}


	@RequestMapping(value="/delete")
	@ResponseBody
	public Map<String,String> delete(String id){
		extAppService.deleteApp(id);
		return retSuccess();
	}
}

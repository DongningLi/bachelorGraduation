/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.ldn.web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.hibernate.SessionFactory;

import com.ldn.service.imp.AdsService;
import com.ldn.service.interfaces.AdsServiceInter;
import com.ldn.service.interfaces.StaffServiceInter;

public class MngnvchAction extends DispatchAction {

	@Resource
	private AdsServiceInter adsService;
	@Resource
	private StaffServiceInter staffService;

	public ActionForward mngads(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String s_pageNow = request.getParameter("pageNow");
		int pageNow = 1;
		if (s_pageNow != null) {
			pageNow = Integer.parseInt(s_pageNow);
		}

		request.setAttribute("currpage", pageNow);
		request.setAttribute("adslist", adsService.showAdsList(10, pageNow));
		int pageCount = adsService.getPageCount(10);
		request.setAttribute("pageCount", pageCount);
		return mapping.findForward("mngads");
	}

	public ActionForward mngintro(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String s_pageNow = request.getParameter("pageNow");
		int pageNow = 1;
		if (s_pageNow != null) {
			pageNow = Integer.parseInt(s_pageNow);
		}
		request.setAttribute("stafflist", staffService.showStaffList(10,
				pageNow));
		int pageCount = staffService.getPageCount(10);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("currpage", pageNow);
		return mapping.findForward("mngintro");
	}

	public ActionForward mngnewads(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return mapping.findForward("mngnewads");
	}

	public ActionForward mnginfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return mapping.findForward("mnginfo");
	}
}
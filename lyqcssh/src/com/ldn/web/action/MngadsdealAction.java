
package com.ldn.web.action;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.ldn.domain.Ads;
import com.ldn.domain.Staff;
import com.ldn.service.interfaces.AdsServiceInter;
import com.ldn.service.interfaces.StaffServiceInter;

public class MngadsdealAction extends DispatchAction {

	@Resource
	private AdsServiceInter adsService;
	@Resource
	private StaffServiceInter staffService;

	public ActionForward delads(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

		String name = request.getParameter("name");

		name=new String(name.getBytes("ISO-8859-1"),"utf-8");
		adsService.delByname(Ads.class, name);
		return mapping.findForward("delok");
	}

	public ActionForward delstaff(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String name = request.getParameter("staname");
		staffService.delByname(Staff.class, name);

		return mapping.findForward("delstaok");
	}
	
	public ActionForward adbyadname(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

		String currpage=request.getParameter("currpage");
		request.setAttribute("currpage", currpage);
		String a=request.getParameter("ads");
		a=new String(a.getBytes("ISO-8859-1"),"utf-8"); 
		System.out.println("********************"+a+"****************88");
		Ads ads= new Ads();
		ads.setAdsname(adsService.showAdsbyId(a).getAdsname());
		ads.setAdscon(adsService.showAdsbyId(a).getAdscon());
		ads.setMngid(adsService.showAdsbyId(a).getMngid());
		request.setAttribute("adsnamecon", ads);
		return mapping.findForward("adbynameok");
	}
}
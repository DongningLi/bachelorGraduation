
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
import com.ldn.service.interfaces.AdsServiceInter;


public class AdbyadnameAction extends DispatchAction {	
	
	@Resource
	private AdsServiceInter adsService;
	public AdsServiceInter getAdsService() {
		return adsService;
	}
	public void setAdsService(AdsServiceInter adsService) {
		this.adsService = adsService;
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
		return mapping.findForward("adbyadnameok");
	}
}
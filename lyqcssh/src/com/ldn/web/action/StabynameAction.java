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

import com.ldn.domain.Staff;
import com.ldn.service.interfaces.StaffServiceInter;

public class StabynameAction extends DispatchAction {

	@Resource
	private StaffServiceInter staffService;

	public ActionForward stabyname(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		String s = request.getParameter("id");
		Staff staff= new Staff();
		staff.setStaid(staffService.showStaffbyId(s).getStaid());
		staff.setStaname(staffService.showStaffbyId(s).getStaname());
		staff.setStadep(staffService.showStaffbyId(s).getStadep());
		staff.setStaocp(staffService.showStaffbyId(s).getStaocp());
		staff.setStasex(staffService.showStaffbyId(s).getStasex());
		staff.setStapass(staffService.showStaffbyId(s).getStapass());
		staff.setStabirth(staffService.showStaffbyId(s).getStabirth());
		staff.setStaphone(staffService.showStaffbyId(s).getStaphone());
		staff.setStaemail(staffService.showStaffbyId(s).getStaemail());
		staff.setStaidt(staffService.showStaffbyId(s).getStaidt());
		staff.setStacrt(staffService.showStaffbyId(s).getStacrt());
		staff.setStahon(staffService.showStaffbyId(s).getStahon());
		request.setAttribute("staffnamecon", staff);
		String currpage=request.getParameter("currpage");
		request.setAttribute("currpage", currpage);
		return mapping.findForward("stabynameok");
	}
	
	public ActionForward stabysearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		String s = request.getParameter("staid");
		Staff staff= new Staff();
		staff.setStaid(staffService.showStaffbyId(s).getStaid());
		staff.setStaname(staffService.showStaffbyId(s).getStaname());
		staff.setStadep(staffService.showStaffbyId(s).getStadep());
		staff.setStaocp(staffService.showStaffbyId(s).getStaocp());
		staff.setStasex(staffService.showStaffbyId(s).getStasex());
		staff.setStapass(staffService.showStaffbyId(s).getStapass());
		staff.setStabirth(staffService.showStaffbyId(s).getStabirth());
		staff.setStaphone(staffService.showStaffbyId(s).getStaphone());
		staff.setStaemail(staffService.showStaffbyId(s).getStaemail());
		staff.setStaidt(staffService.showStaffbyId(s).getStaidt());
		staff.setStacrt(staffService.showStaffbyId(s).getStacrt());
		staff.setStahon(staffService.showStaffbyId(s).getStahon());
		request.setAttribute("staffnamecon", staff);
		return mapping.findForward("stabynameok");
	}

}
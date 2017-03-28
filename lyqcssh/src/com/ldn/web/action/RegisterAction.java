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
import com.ldn.web.forms.StaffForm;


public class RegisterAction extends DispatchAction {

	@Resource
	private StaffServiceInter staffService;
	
	public StaffServiceInter getStaffService() {
		return staffService;
	}

	public void setStaffService(StaffServiceInter staffService) {
		this.staffService = staffService;
	}


	public ActionForward regStaff(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		StaffForm staffForm=(StaffForm)form;
		Staff staff= new Staff();
		staff.setStaid(staffForm.getStaid());
		staff.setStaname(staffForm.getStaname());
		staff.setStadep(staffForm.getStadep());
		staff.setStaocp(staffForm.getStaocp());
		staff.setStasex(staffForm.getStasex());
		staff.setStapass(staffForm.getStapass());
		staff.setStabirth(staffForm.getStabirth());
		staff.setStaphone(staffForm.getStaphone());
		staff.setStaemail(staffForm.getStaemail());
		staff.setStaidt(staffForm.getStaidt());
		staff.setStacrt(staffForm.getStacrt());
		staff.setStahon(staffForm.getStahon());
		
		staffService.add(staff);
		return mapping.findForward("regok");
	}
}
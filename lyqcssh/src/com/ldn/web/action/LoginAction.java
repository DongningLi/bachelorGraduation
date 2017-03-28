package com.ldn.web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.ldn.domain.Manager;
import com.ldn.domain.Staff;
import com.ldn.service.interfaces.ManagerServiceInter;
import com.ldn.service.interfaces.StaffServiceInter;
import com.ldn.web.forms.UserForm;

public class LoginAction extends DispatchAction {
	String message = "";

	@Resource
	private StaffServiceInter staffService;
	@Resource
	private ManagerServiceInter managerService;

	public StaffServiceInter getStaffService() {
		return staffService;
	}

	public void setStaffService(StaffServiceInter staffService) {
		this.staffService = staffService;
	}

	public ManagerServiceInter getManagerService() {
		return managerService;
	}

	public void setManagerService(ManagerServiceInter managerService) {
		this.managerService = managerService;
	}
	
	public ActionForward logout(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.getSession().invalidate();
		return mapping.findForward("logout");
	}
	
	public ActionForward login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		UserForm userForm = (UserForm) form;
		Staff s = new Staff();
		Manager m = new Manager();
		if (userForm.getUserid().startsWith("s")) {
			s.setStaid(userForm.getUserid());
			s.setStapass(userForm.getUserpass());
			s = staffService.checkStaff(s);
			if (s != null) {
				request.getSession().setAttribute("loginuser", s);
				return mapping.findForward("staff");
			} else {
				message = "您输入的用户名/密码不正确";
				request.getSession().setAttribute("mes", message);
				return mapping.findForward("err");
			}
		} else if (userForm.getUserid().startsWith("m")) {
			m.setMngid(userForm.getUserid());
			m.setMngpass(userForm.getUserpass());
			m = managerService.checkManager(m);
			if (m != null) {
				request.getSession().setAttribute("loginuser", m);
				return mapping.findForward("manager");
			} else {
				message = "您输入的用户名/密码不正确";
				request.getSession().setAttribute("mes", message);
				return mapping.findForward("err");
			}
		} else {
			message = "您输入的用户名/密码不正确";
			request.getSession().setAttribute("mes", message);
			return mapping.findForward("err");
		}

	}
}

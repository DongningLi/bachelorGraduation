package com.ldn.service.imp;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.ldn.basic.BasicService;
import com.ldn.domain.Staff;
import com.ldn.service.interfaces.StaffServiceInter;

@Transactional
public class StaffService extends BasicService implements StaffServiceInter {

	@Resource
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void add(Staff staff) {

		sessionFactory.getCurrentSession().save(staff);
	}

	public Staff checkStaff(Staff s) {
		// TODO Auto-generated method stub
		String sql = "from Staff where staid=? and stapass=?";
		List<Staff> list = sessionFactory.getCurrentSession().createQuery(sql)
				.setString(0, s.getStaid()).setString(1, s.getStapass()).list();
		if (list.size() == 1) {
			return list.get(0);
		} else {
			return null;

		}
	}

	public Staff update(Staff staff, String id) {
		sessionFactory.getCurrentSession().update(staff);
		return (Staff)sessionFactory.getCurrentSession().get(Staff.class, id);
	}

	public List showStaffList(int pageSize, int pageNow) {
		String hql = "from Staff";
		return this.executeQueryByPage(hql, null, pageNow, pageSize);
	}

	public int getPageCount(int pageSize) {
		String hql = "select count(*) from Staff";
		return this.queryPageCount(hql, null, pageSize);
	}
	
	public Staff showStaffbyId(String id) {
		String hql="select * from Staff where staid=?";
		return (Staff)sessionFactory.getCurrentSession().get(Staff.class, id);
	}

}

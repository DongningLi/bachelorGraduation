package com.ldn.service.imp;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import com.ldn.domain.Manager;
import com.ldn.service.interfaces.ManagerServiceInter;

@Transactional
public class ManagerService implements ManagerServiceInter {

	@Resource
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public void addManager(Manager m) {
		sessionFactory.getCurrentSession().save(m);
	}

	public Manager checkManager(Manager m) {
		// TODO Auto-generated method stub
		String sql = "from Manager where mngid=? and mngpass=?";
		List<Manager> list = sessionFactory.getCurrentSession().createQuery(sql)
				.setString(0, m.getMngid()).setString(1, m.getMngpass()).list();
		if (list.size() == 1) {
			return list.get(0);
		} else {
			return null;

		}
	}
	
}

package com.ldn.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.ldn.basic.BasicService;
import com.ldn.domain.Ads;
import com.ldn.domain.Staff;
import com.ldn.service.interfaces.AdsServiceInter;

@Transactional
public class AdsService extends BasicService implements AdsServiceInter {

	@Resource
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void addAds(Ads a) {
		sessionFactory.getCurrentSession().save(a);
	}
	
	public List showAdsList(int pageSize,int pageNow){
		String hql="from Ads";
		return this.executeQueryByPage(hql,null, pageNow, pageSize);
	}
	
	public int getPageCount(int pageSize){
		String hql="select count(*) from Ads";
		return this.queryPageCount(hql, null, pageSize);
	}
	public Ads showAdsbyId(String id) {
		String hql="select * from Ads where adsname=?";
		return (Ads)sessionFactory.getCurrentSession().get(Ads.class, id);
	}


}

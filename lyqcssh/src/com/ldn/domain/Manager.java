package com.ldn.domain;

import java.util.Set;

public class Manager {
	private String mngid;
	private String mngpass;
	private Set<Ads> adss;
	
	public Manager(){
		
	}
	public Manager(String mngid, String mngpass) {
		super();
		this.mngid = mngid;
		this.mngpass = mngpass;
	}
	
	public Set<Ads> getAdss() {
		return adss;
	}
	public void setAdss(Set<Ads> adss) {
		this.adss = adss;
	}
	public String getMngid() {
		return mngid;
	}
	public void setMngid(String mngid) {
		this.mngid = mngid;
	}
	public String getMngpass() {
		return mngpass;
	}
	public void setMngpass(String mngpass) {
		this.mngpass = mngpass;
	}
	
}

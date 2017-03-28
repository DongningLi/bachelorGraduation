package com.ldn.domain;

public class Staff {
	private String staid; 
	private String staname; 
	private String stadep; 
	private String staocp; 
	private String stasex; 
	private String stapass; 
	private String staidt; 
	private String stabirth; 
	private String staphone; 
	private String staemail; 
	private String stacrt; 
	private String stahon; 

	public Staff(String staid, String staname, String stadep, String staocp, String stasex,
			String stapass, String staidt, String stabirth, String staphone,
			String staemail,String stacrt, String stahon) {
		this.staid = staid;
		this.staname = staname;
		this.stadep = stadep;
		this.staocp = staocp;
		this.stasex = stasex;
		this.stapass = stapass;
		this.staidt = staidt;
		this.stabirth = stabirth;
		this.staphone = staphone;
		this.staemail = staemail;
		this.stacrt = stacrt;
		this.stahon = stahon;
	}

	public Staff() {

	}

	public String getStaid() {
		return staid;
	}

	public void setStaid(String staid) {
		this.staid = staid;
	}

	public String getStaname() {
		return staname;
	}

	public void setStaname(String staname) {
		this.staname = staname;
	}

	public String getStaocp() {
		return staocp;
	}

	public void setStaocp(String staocp) {
		this.staocp = staocp;
	}

	public String getStasex() {
		return stasex;
	}

	public void setStasex(String stasex) {
		this.stasex = stasex;
	}

	public String getStapass() {
		return stapass;
	}

	public void setStapass(String stapass) {
		this.stapass = stapass;
	}

	public String getStaidt() {
		return staidt;
	}

	public void setStaidt(String staidt) {
		this.staidt = staidt;
	}

	public String getStabirth() {
		return stabirth;
	}

	public void setStabirth(String stabirth) {
		this.stabirth = stabirth;
	}

	public String getStaphone() {
		return staphone;
	}

	public void setStaphone(String staphone) {
		this.staphone = staphone;
	}

	public String getStaemail() {
		return staemail;
	}

	public void setStaemail(String staemail) {
		this.staemail = staemail;
	}

	public String getStadep() {
		return stadep;
	}

	public void setStadep(String stadep) {
		this.stadep = stadep;
	}

	public String getStacrt() {
		return stacrt;
	}

	public void setStacrt(String stacrt) {
		this.stacrt = stacrt;
	}

	public String getStahon() {
		return stahon;
	}

	public void setStahon(String stahon) {
		this.stahon = stahon;
	}

}

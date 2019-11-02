package com.yotabytes.talentpool.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name="talent_candidate_information" )
public class CandidateInformation {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer candidate_id;
	private String first_name;
	private String last_name;
	private String location;
	private Long contact_number;
	private String email_id;
	private String collage_name;
	private String passing_year;
	
	public int getCandidate_id() {
		return candidate_id;
	}
	public void setCandidate_id(int candidate_id) {
		this.candidate_id = candidate_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Long getContact_number() {
		return contact_number;
	}
	public void setContact_number(Long contact_number) {
		this.contact_number = contact_number;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getCollage_name() {
		return collage_name;
	}
	public void setCollage_name(String collage_name) {
		this.collage_name = collage_name;
	}
	public String getPassing_year() {
		return passing_year;
	}
	public void setPassing_year(String passing_year) {
		this.passing_year = passing_year;
	}
	
	
	

}

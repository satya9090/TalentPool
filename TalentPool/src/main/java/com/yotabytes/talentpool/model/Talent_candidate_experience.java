package com.yotabytes.talentpool.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table( name="talent_candidate_experience_details" )
public class Talent_candidate_experience {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String candidate_uniqueId;
	private String project_name;
	private Date start_date;
	private Date end_date;
	private String Technology_used;
	private String description;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getCandidate_uniqueId() {
		return candidate_uniqueId;
	}
	public void setCandidate_uniqueId(String candidate_uniqueId) {
		this.candidate_uniqueId = candidate_uniqueId;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getTechnology_used() {
		return Technology_used;
	}
	public void setTechnology_used(String technology_used) {
		Technology_used = technology_used;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}

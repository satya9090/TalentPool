package com.yotabytes.talentpool.model;

public class Talent_Question_answer {

	private int id;
	private String candidate_Unique_id;
	private Integer question_id;
	private String question_Answer;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCandidate_Unique_id() {
		return candidate_Unique_id;
	}
	public void setCandidate_Unique_id(String candidate_Unique_id) {
		this.candidate_Unique_id = candidate_Unique_id;
	}
	public Integer getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(Integer question_id) {
		this.question_id = question_id;
	}
	public String getQuestion_Answer() {
		return question_Answer;
	}
	public void setQuestion_Answer(String question_Answer) {
		this.question_Answer = question_Answer;
	}
}

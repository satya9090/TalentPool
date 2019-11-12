package com.yotabytes.talentpool.model;

public class TalentQuestion {
	
	private Integer question_answer_id;
	private Integer question_id;
	private String question_name;
	private String answer_option;
	
	public Integer getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(Integer question_id) {
		this.question_id = question_id;
	}
	public String getQuestion_name() {
		return question_name;
	}
	public void setQuestion_name(String question_name) {
		this.question_name = question_name;
	}
	
	public String getAnswer_option() {
		return answer_option;
	}
	public void setAnswer_option(String answer_option) {
		this.answer_option = answer_option;
	}
	public Integer getQuestion_answer_id() {
		return question_answer_id;
	}
	public void setQuestion_answer_id(Integer question_answer_id) {
		this.question_answer_id = question_answer_id;
	}
}

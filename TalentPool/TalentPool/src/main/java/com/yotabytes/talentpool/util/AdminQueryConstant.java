package com.yotabytes.talentpool.util;			

public class AdminQueryConstant {
	
	public static final String GET_QUESTION="select question_id, answer_option from talent_question_answers where is_active='Y'";
	
	public static final String GET_QUESTION1="select talent_question_answers.id,talent_question_answers.question_id,talent_questions.question_name, talent_question_answers.answer_option from talent_question_answers INNER JOIN talent_questions USING(question_id)";
	
	public static final String SAVE_CANDIDATE_INFORMATION="	insert into talent_candidate_information(candidate_uniqueId,first_name, last_name,contact_number,email_id,location,collage_name,passing_year) values(?,?,?,?,?,?,?,?)";
	
	public static final String SAVE_CANDIDATE_EXPERIENCE="insert into talent_candidate_experience(candidate_uniqueId,project_name,start_date,end_date,technology_used,description) values(?,?,?,?,?,?)";
}

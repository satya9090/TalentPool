package com.yotabytes.talentpool.util;			

public class AdminQueryConstant {
	
	public static final String GET_QUESTION="select question_id, answer_option from talent_question_answers where is_active='Y'";
	
	public static final String GET_QUESTION1="select talent_question_answers.id,talent_question_answers.question_id,talent_questions.question_name, talent_question_answers.answer_option from talent_question_answers INNER JOIN talent_questions USING(question_id)";
	
	public static final String SAVE_CANDIDATE_INFORMATION="	insert into talent_candidate_personal_details(candidate_reference_id,first_name,middle_name, last_name,contact_number,email_id,alternate_email_id,location_id,institute_name,passing_year,grade,gender) values(?,?,?,?,?,?,?,?,?,?,?,?)";
	
	public static final String SAVE_CANDIDATE_EXPERIENCE="insert into talent_candidate_experience_details(candidate_personal_id,project_name,start_date,end_date,technologies_used,project_description) values(?,?,?,?,?,?)";
}

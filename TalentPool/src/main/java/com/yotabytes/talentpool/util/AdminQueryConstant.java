package com.yotabytes.talentpool.util;

public class AdminQueryConstant {
	
	public static final String GET_QUESTION="select question_id,question_name,option_1,option_2,option_3,option_4,option_5,option_6,option_7,option_8,option_9,option_10,isActive from talent_question_answers where isActive='true'";

	public static final String SAVE_CANDIDATE_INFORMATION="	insert into talent_candidate_information(candidate_uniqueId,first_name, last_name,contact_number,email_id,location,collage_name,passing_year) values(?,?,?,?,?,?,?,?)";
	
	public static final String SAVE_CANDIDATE_EXPERIENCE="insert into talent_candidate_experience(candidate_uniqueId,project_name,start_date,end_date,technology_used,description) values(?,?,?,?,?,?)";
}

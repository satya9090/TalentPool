package com.yotabytes.talentpool.dao;

import java.util.List;

import com.yotabytes.talentpool.model.CandidateInformation;
import com.yotabytes.talentpool.model.TalentQuestion;
import com.yotabytes.talentpool.model.Talent_candidate_experience;

public interface TalentPoolDAO {

	List<TalentQuestion> getTalentQuestion();
	
	CandidateInformation saveCandidateInformation(CandidateInformation information);
	
	Talent_candidate_experience saveCandidateExperience(Talent_candidate_experience experience);

	
}

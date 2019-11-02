package com.yotabytes.talentpool.service;

import java.util.List;

import com.yotabytes.talentpool.model.CandidateInformation;
import com.yotabytes.talentpool.model.TalentQuestion;
import com.yotabytes.talentpool.model.Talent_candidate_experience;

public interface TalentPoolService {

	public List<TalentQuestion> getTalentQuestions();

	public CandidateInformation saveCandidateInformation(CandidateInformation information);

	public Talent_candidate_experience saveCandidateExperience(Talent_candidate_experience experience);
}

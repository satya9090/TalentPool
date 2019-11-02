package com.yotabytes.talentpool.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yotabytes.talentpool.dao.CandidateExperienceDAO;
import com.yotabytes.talentpool.dao.CandidateInformationDAO;
import com.yotabytes.talentpool.dao.TalentPoolDAO;
import com.yotabytes.talentpool.model.CandidateInformation;
import com.yotabytes.talentpool.model.TalentQuestion;
import com.yotabytes.talentpool.model.Talent_candidate_experience;
import com.yotabytes.talentpool.service.TalentPoolService;

@Service
public class TalentPoolServiceImpl implements TalentPoolService{
	
	@Autowired
	 private TalentPoolDAO dao;
	
	@Autowired
	CandidateInformationDAO infoDao;
	
	@Autowired
	CandidateExperienceDAO experienceDao;
	
	public List<TalentQuestion>  getTalentQuestions()
	{
		return dao.getTalentQuestion();
	}
	
	public CandidateInformation saveCandidateInformation(CandidateInformation information)
	{
		return infoDao.save(information);
	}
	
	public Talent_candidate_experience saveCandidateExperience(Talent_candidate_experience experience)
	{
		return experienceDao.save(experience);
	}

}

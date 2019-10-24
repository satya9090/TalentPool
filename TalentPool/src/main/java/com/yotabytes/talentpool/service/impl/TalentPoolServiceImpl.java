package com.yotabytes.talentpool.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yotabytes.talentpool.dao.TalentPoolDAO;
import com.yotabytes.talentpool.model.TalentQuestion;
import com.yotabytes.talentpool.service.TalentPoolService;

@Service
public class TalentPoolServiceImpl implements TalentPoolService{
	
	@Autowired
	 private TalentPoolDAO dao;
	
	public List<TalentQuestion>  getTalentQuestions()
	{
		return dao.getTalentQuestion();
	}

}

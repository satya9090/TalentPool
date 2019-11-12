package com.yotabytes.talentpool.rest.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.yotabytes.talentpool.model.CandidateInformation;
import com.yotabytes.talentpool.model.TalentQuestion;
import com.yotabytes.talentpool.model.Talent_candidate_experience;
import com.yotabytes.talentpool.service.TalentPoolService;

@RestController

public class TalentPoolApplicationMainController {

	@Autowired
	private TalentPoolService service;

	@RequestMapping("/")
	@ResponseBody
	public String welcome() {
		return "Welcome to RestTemplate Example.";
	}

	@RequestMapping(value = "/getTalentQuestion", method = RequestMethod.GET)
	public List<TalentQuestion> getTalentQuestion(HttpServletRequest request) {

		List<TalentQuestion> questions = service.getTalentQuestions();

		return questions;
	}

	@RequestMapping(value = "/Registration", method = RequestMethod.GET)
	public ModelAndView getCandidatePage(Map<String, Object> model, HttpSession session) {

		return new ModelAndView("register");
	}

	// this method use to store candidateInformation in talent_candidate_information

	@RequestMapping(value = "/candidateInformation", method = RequestMethod.POST)
	public @ResponseBody CandidateInformation saveCandidateInformation(@ModelAttribute CandidateInformation information,
			HttpSession session) {
		
		//create random unique id using randomUUID() method..
		UUID uniqueKey = UUID.randomUUID();
		String uniqueId = uniqueKey.toString();
		
		information.setCandidate_uniqeId(uniqueId);
		session.setAttribute("uniqueId", uniqueId);
		
		return service.saveCandidateInformation(information);
	}

	// this method use to store candidateExperience in talent_candidate_experience

	@RequestMapping(value = "/candidateExperience", method = RequestMethod.POST)
	public @ResponseBody Talent_candidate_experience saveCandidateExperience(
			 HttpSession session, HttpServletRequest request) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Talent_candidate_experience experience=new Talent_candidate_experience();
		
		try
		{
			
			experience.setCandidate_uniqueId(session.getAttribute("uniqueId").toString());
			experience.setProject_name(request.getParameter("project_name"));
			experience.setStart_date(df.parse(request.getParameter("start_date")));
			experience.setEnd_date(df.parse(request.getParameter("end_date")));
			experience.setTechnology_used(request.getParameter("Technology_used"));
			experience.setDescription(request.getParameter("description"));
			
		}catch (Exception e) {
			e.getMessage();
		}
		
		return service.saveCandidateExperience(experience);

	}

	

}
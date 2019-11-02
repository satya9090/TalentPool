package com.yotabytes.talentpool.rest.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView getCandidatePage(Map<String, Object> model,HttpSession session) {
		
		return new ModelAndView("register");
	}

	//this method use to store candidateInformation in talent_candidate_information table//
	
	@RequestMapping(value = "/candidateInformation", method = RequestMethod.POST)
	public @ResponseBody CandidateInformation saveCandidateInformation(@ModelAttribute CandidateInformation information ,HttpSession session) {
		
		return service.saveCandidateInformation(information);
	}
	
	//this method use to store candidateExperience in talent_candidate_experience table//
	
	@RequestMapping(value = "/candidateExperience", method = RequestMethod.POST)
	public @ResponseBody Talent_candidate_experience saveCandidateExperience(@ModelAttribute Talent_candidate_experience experience ,HttpSession session) {
		
		return service.saveCandidateExperience(experience);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// URL:
	// http://localhost:8080/SomeContextPath/employees
	// http://localhost:8080/SomeContextPath/employees.xml
	// http://localhost:8080/SomeContextPath/employees.json
	/*
	 * @RequestMapping(value = "/employees", // method = RequestMethod.GET, //
	 * produces = { MediaType.APPLICATION_JSON_VALUE, //
	 * MediaType.APPLICATION_XML_VALUE })
	 * 
	 * @ResponseBody public List<Employee> getEmployees() { List<Employee> list =
	 * employeeDAO.getAllEmployees(); return list; }
	 * 
	 * // URL: // http://localhost:8080/SomeContextPath/employee/{empNo} //
	 * http://localhost:8080/SomeContextPath/employee/{empNo}.xml //
	 * http://localhost:8080/SomeContextPath/employee/{empNo}.json
	 * 
	 * @RequestMapping(value = "/employee/{empNo}", // method = RequestMethod.GET,
	 * // produces = { MediaType.APPLICATION_JSON_VALUE, //
	 * MediaType.APPLICATION_XML_VALUE })
	 * 
	 * @ResponseBody public Employee getEmployee(@PathVariable("empNo") String
	 * empNo) { return employeeDAO.getEmployee(empNo); }
	 * 
	 * // URL: // http://localhost:8080/SomeContextPath/employee //
	 * http://localhost:8080/SomeContextPath/employee.xml //
	 * http://localhost:8080/SomeContextPath/employee.json
	 * 
	 * @RequestMapping(value = "/employee", // method = RequestMethod.POST, //
	 * produces = { MediaType.APPLICATION_JSON_VALUE, //
	 * MediaType.APPLICATION_XML_VALUE })
	 * 
	 * @ResponseBody public Employee addEmployee(@RequestBody Employee emp) {
	 * 
	 * System.out.println("(Service Side) Creating employee: " + emp.getEmpNo());
	 * 
	 * return employeeDAO.addEmployee(emp); }
	 * 
	 * // URL: // http://localhost:8080/SomeContextPath/employee //
	 * http://localhost:8080/SomeContextPath/employee.xml //
	 * http://localhost:8080/SomeContextPath/employee.json
	 * 
	 * @RequestMapping(value = "/employee", // method = RequestMethod.PUT, //
	 * produces = { MediaType.APPLICATION_JSON_VALUE, //
	 * MediaType.APPLICATION_XML_VALUE })
	 * 
	 * @ResponseBody public Employee updateEmployee(@RequestBody Employee emp) {
	 * 
	 * System.out.println("(Service Side) Editing employee: " + emp.getEmpNo());
	 * 
	 * return employeeDAO.updateEmployee(emp); }
	 * 
	 * // URL: // http://localhost:8080/SomeContextPath/employee/{empNo}
	 * 
	 * @RequestMapping(value = "/employee/{empNo}", // method =
	 * RequestMethod.DELETE, // produces = { MediaType.APPLICATION_JSON_VALUE,
	 * MediaType.APPLICATION_XML_VALUE })
	 * 
	 * @ResponseBody public void deleteEmployee(@PathVariable("empNo") String empNo)
	 * {
	 * 
	 * System.out.println("(Service Side) Deleting employee: " + empNo);
	 * 
	 * employeeDAO.deleteEmployee(empNo); }
	 */

}
package com.yotabytes.talentpool.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.yotabytes.talentpool.model.Talent_candidate_experience;

public interface CandidateExperienceDAO extends CrudRepository<Talent_candidate_experience, String>{

}

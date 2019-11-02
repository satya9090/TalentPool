package com.yotabytes.talentpool.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.yotabytes.talentpool.model.CandidateInformation;

public interface CandidateInformationDAO extends JpaRepository<CandidateInformation, String> {

}

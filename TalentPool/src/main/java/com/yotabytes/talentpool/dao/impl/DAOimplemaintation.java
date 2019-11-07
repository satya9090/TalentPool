package com.yotabytes.talentpool.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.yotabytes.talentpool.dao.TalentPoolDAO;
import com.yotabytes.talentpool.model.CandidateInformation;
import com.yotabytes.talentpool.model.TalentQuestion;
import com.yotabytes.talentpool.model.Talent_candidate_experience;
import com.yotabytes.talentpool.util.AdminQueryConstant;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

@Repository
public class DAOimplemaintation implements TalentPoolDAO {

	@Autowired
	public JdbcTemplate jdbcTemplate;

	@Override
	public List<TalentQuestion> getTalentQuestion() {

		String sql = AdminQueryConstant.GET_QUESTION;
		List<TalentQuestion> questions = jdbcTemplate.query(sql, new RowMapper<TalentQuestion>() {

			@Override
			public TalentQuestion mapRow(ResultSet rs, int rownumber) throws SQLException {
				TalentQuestion question = new TalentQuestion();
				question.setQuestion_id(rs.getInt(1));
				question.setQuestion_name(rs.getString(2));
				question.setOption_1(rs.getString(3));
				question.setOption_2(rs.getString(4));
				question.setOption_3(rs.getString(5));
				question.setOption_4(rs.getString(6));
				question.setOption_5(rs.getString(7));
				question.setOption_6(rs.getString(8));
				question.setOption_7(rs.getString(9));
				question.setOption_8(rs.getString(10));
				question.setOption_9(rs.getString(11));
				question.setOption_10(rs.getString(12));
				question.setIsActive(rs.getString(13));

				return question;
			}
		});
		return questions;

	}

	@Override
	public CandidateInformation saveCandidateInformation(CandidateInformation information) {
		try {
			String sql = AdminQueryConstant.SAVE_CANDIDATE_INFORMATION;
			jdbcTemplate.update(sql,
					new Object[] { information.getCandidate_uniqeId(),
							information.getFirst_name(),
							information.getLast_name(),
							information.getContact_number(),
							information.getEmail_id(),
							information.getLocation(),
							information.getCollage_name(), 
							information.getPassing_year(), });
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return information;
	}

	@Override
	public Talent_candidate_experience saveCandidateExperience(Talent_candidate_experience experience) {
		try {
			String sql = AdminQueryConstant.SAVE_CANDIDATE_EXPERIENCE;

			jdbcTemplate.update(sql,
					new Object[] { experience.getCandidate_uniqueId(),
							experience.getProject_name(),
							experience.getStart_date(),
							experience.getEnd_date(),
							experience.getTechnology_used(),
							experience.getDescription(),

					});
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return experience;
	}

}

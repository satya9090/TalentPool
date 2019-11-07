package com.yotabytes.talentpool.rest.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;



@SpringBootApplication  (scanBasePackages={"com.yotabytes.talentpool"}) 

public class TalentPoolApplication {

	public static void main(String[] args) {
        SpringApplication.run(TalentPoolApplication.class, args);
    }
}
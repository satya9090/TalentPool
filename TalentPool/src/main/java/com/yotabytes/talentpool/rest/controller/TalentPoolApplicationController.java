package com.yotabytes.talentpool.rest.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication(scanBasePackages={"com.yotabytes.talentpool.*"})

public class TalentPoolApplicationController {

	public static void main(String[] args) {
        SpringApplication.run(TalentPoolApplicationController.class, args);
    }
}


 
package com.randomnumbergenerator.RandomNumberGenerator;

import jakarta.annotation.PreDestroy;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@SpringBootApplication
@RestController
public class RandomNumberGeneratorApplication {
	private static final Logger logger = LoggerFactory.getLogger(RandomNumberGeneratorApplication.class);

	public static void main(String[] args) {
		logger.info("RandomNumberGeneratorApplication STARTED");
		SpringApplication.run(RandomNumberGeneratorApplication.class, args);
	}

	@RequestMapping("/random")
	public String getRandomNumber() {
		logger.info("RandomNumberGeneratorApplication GET /random");
		int number = new Random().nextInt(100);
		logger.info("Random number generated is " + number + ".");
		logger.debug("This is a debug message in getRandomNumber() method");
		logger.debug("Method: getRandomNumber() is executed.");
		logger.debug("getRandomNumber() method returns " + number + ".");
		return "Random number is " + number + ".";
	}

	@PreDestroy
	public void destroy() {
		logger.info("RandomNumberGeneratorApplication STOPPED");
	}
}

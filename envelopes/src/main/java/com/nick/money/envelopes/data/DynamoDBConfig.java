package com.nick.money.envelopes.data; 

import org.socialsignin.spring.data.dynamodb.repository.config.EnableDynamoDBRepositories;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import com.amazonaws.services.dynamodbv2.AmazonDynamoDB;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDBClientBuilder;

@Configuration
@EnableDynamoDBRepositories(basePackages= {"com.nick.money.envelopes.data"})
public class DynamoDBConfig {
    
	
	@Bean
	public  AmazonDynamoDB amazonDynamoDB() {
		return AmazonDynamoDBClientBuilder.defaultClient();
		
	}
}
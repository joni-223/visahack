package com.nick.money.envelopes.data;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAutoGeneratedKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBTable;

import lombok.Data;

@Data
@DynamoDBTable(tableName = "van")
public class Van{
    @DynamoDBHashKey(attributeName = "id")
    @DynamoDBAutoGeneratedKey
   // @Id
   // @GeneratedValue(strategy=GenerationType.AUTO) 
    private String id;
    private String number;
    private int expMonth;
    private int expYear;
    private String carholderFirstName;
    private String cardholderLastName;
    private String panId;
}
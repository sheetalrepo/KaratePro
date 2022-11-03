Feature: Adv Karate Test Script

  Background: Common steps will come here
    Given def dataGen = Java.type('com.karate.DataGenerator')
    Given url 'https://reqres.in/api/users'

  Scenario: Testing Random Data Generator
    * def randomUserName = dataGen.getRandomUserName();
    * print randomUserName
    And request {"name": "#(randomUserName)","job": "Karate-Trainer"}
    When method Post
    Then status 201
    And match response.name == "#string"
    And match response.job == "Karate-Trainer"

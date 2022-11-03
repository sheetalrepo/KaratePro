
Feature: Basic Karate Test Script

  
  Scenario: Testing POST request performance
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sheetal","job": "Trainer"}
    When method Post
    Then status 201
    And match response.name == "Sheetal"
    And match response.job == "Trainer"
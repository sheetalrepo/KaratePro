Feature: Adv Karate Test Script

  # Embedded Expressions
  Background: Common steps will come here
    Given url 'https://reqres.in/api'

  Scenario: Testing Embedded Expressions
    Given path 'users'
    #And request {"name": "Sheetal","job": "Trainer"}
    And def jsonRequestObj = {"name": "Sheetal","job": "Karate-Trainer"}
    And request {"name": "#(jsonRequestObj.name)","job": "#(jsonRequestObj.job)"}
    When method Post
    Then status 201
    And match response.name == "Sheetal"
    And match response.job == "Karate-Trainer"

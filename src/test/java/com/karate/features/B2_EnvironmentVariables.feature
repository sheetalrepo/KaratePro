Feature: Adv Karate Test Script

  # karate-config.js 
  # apiUrl, userName, userJob
  #(key)
  # mvn clean test -Dkarate.env="dev"

  Scenario: Testing Env Variables 1
    Given url apiUrl
    When method Get
    Then status 200

  Scenario: Testing Env Variables 2
    Given url apiUrl + '?page=2'
    When method Get
    Then status 200
 
  Scenario: Testing Env Variables 3. Value will be read from karate-config.js
    Given url apiUrl
    And request {"name": "#(userName)","job": "#(userJob)"}
    When method Post
    Then status 201
    And match response.name == "Sheetal Dev"
    And match response.job == "Karate-Trainer"

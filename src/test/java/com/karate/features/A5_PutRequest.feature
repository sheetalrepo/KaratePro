Feature: Basic Karate Test Script

  #PUT
  Scenario: Testing PUT request
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sheetal","job": "Trainer"}
    When method Post
    Then status 201
    And match response.name == "Sheetal"
    And match response.job == "Trainer"
    * def id = response.id
    And print response
    * def putUrl = 'https://reqres.in/api/users/'+ id
    Given url putUrl
    And request {"name": "Sheetal Updated","job": "Trainer Updated"}
    When method Put
    Then status 200
    And match response.name == "Sheetal Updated"
    And match response.job == "Trainer Updated"
    And match response.updatedAt == "#string"
    And print response

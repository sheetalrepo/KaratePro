Feature: Basic Karate Test Script

  #POST
  #Request Body as JSON
  # def variable
  # passing data from one request to another request
  Scenario: Testing POST single line json request
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sheetal","job": "Trainer"}
    When method Post
    Then status 201
    And match response.name == "Sheetal"
    And match response.job == "Trainer"

  Scenario: Testing POST multiple line json request
    * def reqBody =
      """
      	{
      		"name": "morpheus",
      		"job": "leader"
      	}
      """
    Given url 'https://reqres.in/api/users'
    And request reqBody
    When method Post
    Then status 201

  Scenario: Testing passing data from one request to another
    Given url 'https://reqres.in/api/users'
    And request {"name": "ProdBug","job": "Trainer"}
    When method Post
    Then status 201
    * def name = response.name
    * def finalUrl = 'https://reqres.in/api/users/' + name
    Given url finalUrl
    When method Get
    Then status 404

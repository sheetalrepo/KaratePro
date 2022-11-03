Feature: Basic Karate Test Script

  #DELETE
  
  Scenario: Testing DELETE single line json request
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sheetal","job": "Trainer"}
    When method Post
    Then status 201
		* def id = response.id
		* def deleteUrl = 'https://reqres.in/api/users/'+ id
		Given url deleteUrl
		When method Delete
		Then status 204
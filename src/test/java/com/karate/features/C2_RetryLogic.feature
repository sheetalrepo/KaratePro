Feature: Karate Retry Logic

  #Retry
  #Sleep
  
  # deleteUrl response should be 204 rather 200
  Scenario: Retry Request
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sheetal","job": "Trainer"}
    When method Post
    Then status 201
    
    * def id = response.id
    * def deleteUrl = 'https://reqres.in/api/users/'+ id
    
    * configure retry = { count: 5, interval: 3000}
    And retry until responseStatus == 200
    
    Given url deleteUrl
    When method Delete
    Then status 204

Feature: Reading external files

# * def jsonReq = read('classpath:com/..path to file../abc.json')

  Background: Reading external files
    Given url 'https://reqres.in/api/users'
    * url 'https://reqres.in/api/users'
    * def jsonReq = read('classpath:com/karate/features/data/abc.json')

  Scenario: Passing external json as request body
    Given url 'https://reqres.in/api/users'
    And request jsonReq
    When method Post
    Then status 201
    And match response.name == "Sheetal"
    And match response.job == "Trainer"

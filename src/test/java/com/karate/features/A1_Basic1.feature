Feature: Basic Karate Test Script

  #param
  #path
  Background: Common steps will come here

  #Given url 'https://reqres.in/api'
  Scenario: Hello World Test
    Given url 'https://reqres.in/api/users'
    When method Get
    Then status 200

  Scenario: Passing Query Parameters in URL
    Given url 'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200

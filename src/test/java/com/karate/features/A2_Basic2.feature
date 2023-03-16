Feature: Basic Karate Test Script

  #param
  #path
  Background: Common steps will come here
    Given url 'https://reqres.in/api'

  Scenario: Testing Background and Path 
    Given path 'users'
    When method Get
    Then status 200


	#https://reqres.in/api/users?page=2
  Scenario: Testing Query Parameters
    Given path 'users'
    #Given param page = 2
    Given params {page:2}
    When method Get
    Then status 200

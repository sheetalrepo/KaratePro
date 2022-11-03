
Feature: Karate Helper Feature

 	#call read
 
  Scenario: Login Helper Scenario
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sheetal","job": "Trainer"}
    When method Post
    Then status 201
    * def myName = response.name
    * print 'My name is: ', myName
    
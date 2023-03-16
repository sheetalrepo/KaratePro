Feature: Karate Helper Feature

	#This helper DID NOT expect parameters from calling feature 
	#Refer B5_Helper

  #	myName need to be declared in helper before fetching its value in calling feature  
  Scenario: Login Helper Scenario
    Given url 'https://reqres.in/api/users'
    And request {"name": "Sheetal","job": "Trainer"}
    When method Post
    Then status 201
    * def myName = response.name
    * def myJob = response.job
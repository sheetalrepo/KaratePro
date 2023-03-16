Feature: Karate Helper Feature

	#This helper expect parameters from calling feature

  #	myName2 need to be declared in this helper before fetching its value in calling feature  

  Scenario: Login Helper2, need parameter
    Given url 'https://reqres.in/api/users'
    And request {"name": "#(name)","job": "#(job)"}
    When method Post
    Then status 201
    * def myName2 = response.name
    * print 'My name is: ', myName2
    
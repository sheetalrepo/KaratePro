Feature: Adv Karate Test Script

  # def response = call read('abc.feature')
  Scenario: Testing Calling Other Feature File
    * def rawResponseFromHelper = call read('B1_Helper.feature')
    * def name = rawResponseFromHelper.myName
    * print name
    * def job = rawResponseFromHelper.myJob
    * print job

  Scenario: Testing Calling Other Feature File 2
    * def rawResponseFromHelper = callonce read('B1_Helper.feature')
    * def name = rawResponseFromHelper.myName
    * def finalUrl = 'https://reqres.in/api/users/' + name
    * print 'Final URL to be hit: ', finalUrl
    Given url finalUrl
    When method Get
    Then status 404

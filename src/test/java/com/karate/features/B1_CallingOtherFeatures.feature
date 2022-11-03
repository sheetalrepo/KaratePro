Feature: Adv Karate Test Script

  Scenario: Testing Calling Other Feature File
    * def rawResponseFromHelper = call read('helper.feature')
    #* def rawResponseFromHelper = callonce read('helper.feature')
    * def name = rawResponseFromHelper.myName
    * def finalUrl = 'https://reqres.in/api/users/' + name
    * print 'Final URL to be hit: ', finalUrl
    Given url finalUrl
    When method Get
    Then status 404

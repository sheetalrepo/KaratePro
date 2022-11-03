Feature: Adv Karate Test Script

  Background: Common steps will come here
    Given url 'https://reqres.in/api/users'

  Scenario Outline: Testing Scenario Outline
    And request {"name": "<name>","job": "<job>"}
    When method Post
    Then status 201
    And match response.name == "<name>"
    And match response.job == "<job>"

    Examples: 
      | name    | job      |
      | Sheetal | Trainer  |
      | ProdBug | Youtuber |

Feature: Adv Karate Test Script

  Background: Common steps will come here
    Given url 'https://reqres.in/api/users'

  Scenario Outline: Testing Scenario Outline
    And request {"name": "<nameTitle>","job": "<jobTitle>"}
    When method Post
    Then status 201
    And match response.name == "<nameTitle>"
    And match response.job == "<jobTitle>"

    Examples: 
      | nameTitle | jobTitle |
      | Sheetal   | Trainer  |
      | ProdBug   | Youtuber |
      | Abc       | AbcJob   |
      | Xyz       | XyzJob   |
      | Mno       | MnoJob   |

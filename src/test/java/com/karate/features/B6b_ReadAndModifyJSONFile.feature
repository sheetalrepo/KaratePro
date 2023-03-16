Feature: Reading Java files

  #karate-config.js > apiUrl
  Background: Reading external files
    * url apiUrl
    * def jsonReq = read('classpath:com/karate/features/data/abc2.json');

  Scenario Outline: Testing Scenario Outline
    # update default json with new values
    * set jsonReq.basic.first_name = "<userFirstName>"
    * set jsonReq.other.city = "<userCity>"
    And request jsonReq
    When method Post
    Then status 201
    * print response
    And match response.basic.first_name == "<userFirstName>"
    And match response.other.city == "<userCity>"

    Examples: 
      | userFirstName | userCity  |
      | Apple         | Pune      |
      | Mango         | Hyderabad |

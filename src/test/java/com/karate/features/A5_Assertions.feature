Feature: Basic Karate Test Script

  #match    text, int matching
  #object
  #array
  #array length    '#[size]'
  #contains ['5','6']
  #contains any ['5','6']
  #!contains ['5','6']
  # wild card *
  # ..  random search in all response
  Background: Common steps will come here
    Given url 'https://reqres.in/api'

  #https://reqres.in/api/users?page=2
  Scenario: Testing Assertions
    Given params {page:2}
    Given path 'users'
    When method Get
    Then status 200
    And match response.per_page == 6
    And match response.data[2].first_name == "Tobias"
    And match response.support.url == "https://reqres.in/#support-heading"
    And match response.data == '#[6]'
    And match response.data[*].id contains [7, 8, 9]
    And match response.data[*].id contains any [5, 6, 7]
    And match response.data[*].first_name contains "Rachel"
    And match response..last_name contains "Ferguson"

  Scenario: Testing Fuzzy Matching i.e. Data Types
    Given params {page:2}
    Given path 'users'
    When method Get
    Then status 200
    And match response.per_page == '#number'
    And match response.data[2].first_name == "#string"

  Scenario: Testing Schema Validation
    Given params {page:2}
    Given path 'users'
    When method Get
    Then status 200
    And match response.data[0] ==
      """
      {
      "id":'#number',
      "email": "#string",
      "first_name": "#string",
      "last_name": "#string",
      "avatar": "#string"
      }
        
      """

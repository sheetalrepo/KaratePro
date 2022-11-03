Feature: Basic Karate Test Script

  Background: Common steps will come here
    Given url 'https://reqres.in/api'

  Scenario: Testing Get Performance
    Given path 'users'
    When method Get
    Then status 200

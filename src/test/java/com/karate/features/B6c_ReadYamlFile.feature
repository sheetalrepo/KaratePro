Feature: Reading Yaml files

  Background: Reading external files
    Given url 'https://reqres.in/api/users'
    * url 'https://reqres.in/api/users'
    * def yamlReq = read('classpath:com/karate/features/data/abc.yaml')

  Scenario: Passing Yaml file as request body
    Given url 'https://reqres.in/api/users'
    And request yamlReq
    When method Post
    Then status 201
    And match response.name == "Sheetal"
    And match response.job == "Trainer"

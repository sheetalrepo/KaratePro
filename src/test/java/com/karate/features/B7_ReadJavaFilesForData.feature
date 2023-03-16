Feature: Reading Java files

  #karate-config.js > apiUrl
  Background: Reading external files
    * url apiUrl
    #Reading Java File
    * def obj = Java.type('com.karate.features.data.FakerService');
    #Reading JSON
    * def jsonReq = read('classpath:com/karate/features/data/abc.json');
    #Update JSON with Random Data
    #* set jsonReq.name = obj.getJsonBody().name
    #* set jsonReq.job = obj.getJsonBody()
    
    * set jsonReq.name = obj.getRandomUsername()
    * set jsonReq.job = obj.getRandomJob()
    

  Scenario: Passing external json as request body with random data
    Given url 'https://reqres.in/api/users'
    And request jsonReq
    When method Post
    And match response.name == jsonReq.name
    And match response.job == jsonReq.job

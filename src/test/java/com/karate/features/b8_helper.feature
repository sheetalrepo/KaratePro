@ignore
Feature: Reading Java files

  Scenario: Get Random Username
    * def obj = Java.type('com.karate.features.data.FakerService');
    * def username = obj.getRandomUsername()
@prodbug
Feature: afterScenario after Feature
	#afterFeature not working

  Background: 
    * def foo = 'hello'
    * configure afterFeature = function(){ karate.call('b9_after_feature.feature');}
    * configure afterScenario =
      """
      function(){
        karate.log('My Scenario Name: ', karate.scenario.name);
        karate.call('b9_after_scenario.feature', { caller: karate.feature.fileName });
      }
      """
    
  Scenario: Case 1
    * print foo

  Scenario: Case 2
    * print foo

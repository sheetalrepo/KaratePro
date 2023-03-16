@ignore
Feature: Any Get related operation will come here
  I want to use this template for my feature file
	
	
	#Operation folder will contain all GET, PUT, POST, DELETE etc operations
	#These features will be called in actual feature files present inside /api-test folder

 Background: Load default Url
    *url apiUrl
 
  Scenario: Title of your scenario
    Given path '/v1/users'
    When method GET
    Then assertions


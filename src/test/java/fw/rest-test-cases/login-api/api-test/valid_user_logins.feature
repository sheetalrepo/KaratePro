@login
Feature: Title of your feature
  I want to use this template for my feature file

  #1. This is main feature file which contains real scenario
  #2. This feature will read required data from test-data folder
  #3. This feature will also take advantages of features present in 'operation' folder
  #4. This way length of this feature will be drastically reduced and will only contains business logic
  Background: Load default Url
    *def authorization = call read('classpath: path/to/authorization.feature')
    *def cookieValue = authorization.cookies
    *configure headers = { Cookie: cookieValue}
    *if(karate.env == 'qa') jdbcClient = karate.callonce('classpath: path/helper-folder/connect-to-jdbc-qa.js') 
    *if(karate.env == 'dev') jdbcClient = karate.callonce('classpath: path/helper-folder/connect-to-jdbc-dev.js') 

  Scenario: login test 1
    *configure afterScenario = function() {karate.call('classpath: path/to/delete-users.feature')}
    *def getSomeId = call read('classpath: path/to/operation/get-login.feature')
    When I do some more stuff using getSomeId
    
    *def updateSomeId = call read('classpath: path/to/operation/update-login.feature')
    Then I validate the outcomes

  Scenario: login test 2
    Given I want to write a step with precondition
		Then I verify some more scenarios
	
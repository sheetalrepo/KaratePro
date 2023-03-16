@ignore
Feature: Basic Karate Test Script

#We are assuming delete call need proper user authentication and headers

  Scenario: To clean up DB before running any scenario 
    #get login user authorization based on env
    *def authorization = call read('classpath: com/path/authorization.feature') {username: '#("myusername" + karate.env)'}
    *def cookieValue = authorization.cookies
    * configure headers = { Cookie: cookieValue}
    Given url 'https://reqres.in/api/users'
		When method Delete
		Then status 204
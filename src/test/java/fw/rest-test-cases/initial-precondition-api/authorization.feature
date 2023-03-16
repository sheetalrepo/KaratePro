@ignore

#Preconditions are not to be run alone hence @ignore tag
Feature: Basic Karate Test Script

  Background: Load default Url
    * url apiUrl

  Scenario: To Authorize login user
    #calling feature will provide username based on env name
    * def authHeader = "..... #(username)"
    * def headers = karate.merge(authHeader)  
    Given path '/authenticate'
    And headers headers
		When method Post
		* karate.log(responseStatus)
		* if(responseStatus != 200) karate.abort();
		# cookie will be used in other features like delete-users.feature
		* def cookies = 'access_token_' + karate.env + '=' + responseHeaders['access-token'] + ';'
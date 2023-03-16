Feature: Before Class CallOnce Examples

	#callonce is like @BeforeClass i.e. only execute once

  #callSingle  like @BeforeSuite can be defined in karate-config 
  #karate-config.js > apiUrl

  Background: Reading external files
    #Call one times and cached username will come each time
    * def response = callonce read('b8_helper.feature')
    * def username = response.username
   
  Scenario: Scenario A
    Then print "Scenario A"
    Then print username

  Scenario: Scenario B
    Then print "Scenario B"
    Then print username
    
    
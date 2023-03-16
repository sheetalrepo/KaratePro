Feature: Before Hooks Examples

  #call read is like @BeforeMethod
  #Backgroud is also like @BeforeMethod
  
  Background: Reading external files
    #Call two times and different username will come each time
    * def response = call read('b8_helper.feature')
    * def username = response.username

  Scenario: Scenario A
    Then print "Scenario A"
    Then print username

  Scenario: Scenario B
    Then print "Scenario B"
    Then print username

#    * karate.log(username)

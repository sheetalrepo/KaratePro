Feature: Karate Sleep

  #Sleep
  # Best Practice: Use Retry before Sleep
  
  Scenario: Sleep Test
		* def sleep = function(pause){ java.lang.Thread.sleep(pause) } 
    Given url 'https://reqres.in/api/users'
    When method Get
    * print 'Sleeping.......'
    * eval sleep(10000)
    Then status 200

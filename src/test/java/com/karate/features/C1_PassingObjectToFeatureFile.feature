Feature: Passing Obj to Another Feature File

  #Karate.call

  # https://reqres.in/api/users?page=2  
  # https://reqres.in/api/users/9
  
  #Steps:
  # 1.We are passing object (block of json) from a big response
  #   Single value cannot be passed
  # 2.In helper class we will automatically fetch id from json object
  # 3.Helpef class will return helperFName
  # 4. C1 class will print returned name
  
  # = is used for assignment
  # == is used for comparison
  
   
  Scenario: Passing Json Object
    Given url 'https://reqres.in/api/users?page=2'
    When method Get
    Then status 200
    
    #Response Data
    * def fName = response.data[2].first_name
    * def result = fName == 'Tobias'? 10 : 20     
    * print result

		#Fetch one node from big JSON and save it into object obj
    * def obj = response.data[2]
    * def id = response.data[2].id
    * print obj

		#Calling Helper feature and passing object
    * if(id == 9) karate.call('classpath:com/karate/features/c1_helper.feature', obj)
		* def response = karate.call('classpath:com/karate/features/c1_helper.feature', obj)
		* print response
		  
		#Calling Helper feature and passing object + fetch helperFName from Helper feature 
		* def defaultName = 'DefaultName' 
		* def helperFirstName = karate.call('classpath:com/karate/features/c1_helper.feature', obj).helperFName
		* def resultNew = id == 9 ? helperFirstName : defaultName
    * print resultNew
		
		
    
    

    
    
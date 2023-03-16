Feature: Using Functions

  # https://reqres.in/api/users?page=2
  # https://reqres.in/api/users/{id}

  # Imp to note we are printing all object details without declaring them in advance
  # id, email etc are present inside object

  # to return some value from feature file we need to define it e.g. first_name
  
  Background: Base URL
    Given url 'https://reqres.in/api/users/'
    
  #Obj from calling class will automatically populate id and other fields  
  Scenario: Fetch id from passed JSON object 
    Given path id
    When method Get
    Then status 200
    * print response
    
    * def helperFName = response.data.first_name
    
    * print helperFName
    * print id
    * print email
    * print first_name
    * print last_name
    * print avatar
    
    
    
    
  
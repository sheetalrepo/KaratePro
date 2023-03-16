Feature: Adv Karate Test

# Diff way to call feature file
# def response = call read('abc.feature')
# def response = call read('abc.feature') tabledata
# def response = call read('abc.feature') {json data}

  #helper2
  Background: Common steps will come here
    Given url 'https://reqres.in/api/users'
    * table nameJobTable
      | srno | name   | job |
      |    1 | 'Adam' | 'A' |
      |    2 | 'Bob'  | 'B' |

  #This scenario will be run one times but helper2 will be called two times
  Scenario: Test Passing Table '<srno>'
    * def response = call read('b5_helper.feature') nameJobTable
    And print response

  Scenario: Passing Json Data (will not use table data) 
    * def response = call read('b5_helper.feature') {"name": "ProdBug","job": "Trainer"}
		And print response.myName2
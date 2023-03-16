Feature: Reading Data from Yaml

  Background: Reading Data from Yaml
    Given url 'https://reqres.in/api/users'
    * url 'https://reqres.in/api/users'
    * def yamlData = read('classpath:com/karate/features/data/testdata.yaml')

  Scenario: Reading and Parsing Yaml file
		* print yamlData["Name"]
		* print yamlData["Others"][0]["Department"]
		* print yamlData["Others"][2]["Address"]
		* print yamlData["Language"]
		* print yamlData
		

===============================================================================================================
===============================================================================================================
Karate API Automation

by ProdBug
===============================================================================================================


===============================================================================================================
#Course Content
===============================================================================================================
Set I (Basic):
	1. Why Karate? 
		- Difference between Karate and Rest Assured, Selenium, JMeter
		- Other API automation tools 
		- JSON, BDD
	2. Get Request
	3. Get Request with Query and Path Param
	4. Post Request
	5. Delete Request
	6. PUT Request
	7. Assertions using Match, Wild card   (till here YouTube Done)
		- Schema Validation
		- Fuzzy Matching
	
Set II (Adv):
	8. Calling other Feature files and reusing code
	9. Tagging and running code via Maven	
	10. Setting up Environmental/Global variables
	11. Embedded Expressions
	12. Scenario Outline
	13. Data Generators using Faker Service 
	14. Parallel Execution 
	
	15. Passing Data to other feature files via Tables  (B5)
	16. Read JSON request from external files (B6a)
	17. Read and modify sample JSON file (B6b)
	18. Read YAML file and pass as request (B6c)
	19. Read YAML and fetch values from it (B6d)
	20. Calling Java Files (B7)
	21. Before Feature callonce (B8)
	22. Before Scenario call read (B8) 
	23. After Scenario (B9)

    
Set III (Adv):
    24. Passing Object via karate.call() function	(C1)
    25. Retry Logic (C2)
    26. Sleep (C3)
    27. Json Transformation (C4)
    28. Type Conversion (C5)
	
	
Performance:
	1. Performance Testing via Gatling

UI Automation:
	1. Karate UI Automation 

Note: 
Youtube Done: SrNo 14



===============================================================================================================
#Setup part:
===============================================================================================================
1. Java and Maven 
	java -version
	mvn -v
2. Plugin for JS, Feature files, YAML Editor



===============================================================================================================
#How To Run
===============================================================================================================
1. Right Click any feature file and run as Cucumber feature
Report file: KaratePro/target/karate-reports/karate-summary.html

2. mvn cmd
mvn clean test "-Dkarate.options=--tags @prodbug" -Dtest=MyRunner5NewTest -Dkarate.env="dev" 

3. For Parallel Run
mvn clean test "-Dkarate.options=--tags @prodbug" -Dtest=TestParallel -Dkarate.env="dev"




===============================================================================================================
#Notes:
===============================================================================================================

#To make URL
Given url 'https://reqres.in/api'
Given url apiUrl  		   //reading from karate-config.js
Given path 'users'        /users will be appended at the end of url
Given params {page:2}     https://reqres.in/api/users?page=2  
            
# Print
Then print 'Text ', username, 'Text'
* print username
* karate.log(username)

#To read json file 
* def jsonReq = read('classpath:com/..path to file../abc.json')    //B6
And request jsonReq

# To read property from global karate-config.js
Given url apiUrl  
And request {"name": "#(userName)","job": "#(userJob)"}                   //B2
When method Post


# Diff way to call feature file
1. def response = call read('abc.feature')                  //B1
2. def response = call read('abc.feature') tabledata        //B5 
3. def response = call read('abc.feature') {json:data}      //B5
4. def response = callonce read('abc.feature')              //B8 
5. def response = karate.call('classpath:com/path/abc.feature', obj)   //C1 Passing Object
6. In case we need to call some js file or feature file from inside a JS function
   function(){
   	   karate.call('classpath:com/path/abc.feature')      //B9
   }    


# Calling Java file 
* def obj = Java.type('com.karate.features.data.FakerService');            //B7
* set jsonReq.name = obj.getRandomUsername()


#Retry
* configure retry = { count: 5, interval: 3000}             //C2
And retry until responseStatus == 200


#Sleep
* eval sleep(10000)



    
    
    
    
===============================================================================================================
#TODOs:
===============================================================================================================
1. Mocking
2. Performance
3. UI Test 
4. Framework
   - high level idea has been added into fw folder 




===============================================================================================================
Keep Learning Keep Smiling
===============================================================================================================



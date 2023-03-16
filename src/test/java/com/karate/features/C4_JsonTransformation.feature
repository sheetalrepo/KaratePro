Feature: Json Transform

	# List passed to JS function
	# JS function modifying List element one by one
  Scenario: Karate Map operation
    * def fun = function(x){ return x * x }
    * def list = [1, 2, 3]
    * def res = karate.map(list, fun)
    * match res == [1, 4, 9]
		* print res
		
	Scenario: Convert array of primitives into array of objects
    * def list = [ 'Bob', 'Wild', 'Nyan' ]
    * def data = karate.mapWithKey(list, 'name')
    * match data == [{ name: 'Bob' }, { name: 'Wild' }, { name: 'Nyan' }]
		* print data
		
	Scenario: Filter List if fun return True
    * def fun = function(x){ return x % 2 == 0 }
    * def list = [1, 2, 3, 4]
    * def res = karate.filter(list, fun)
    * match res == [2, 4]	
    * print res
		
	Scenario: forEach - Fetching indexes from List
    * def vals = []
    * def idxs = []
    * def fun = 
    """
    function(y, i) { 
      karate.appendTo(vals, y); 
      karate.appendTo(idxs, i); 
    }
    """
   	* def list = [10, 20, 30]
    * karate.forEach(list, fun)
    * match vals == [10, 20, 30]
    * match idxs == [0, 1, 2]
    * print vals
    * print idxs
    
  Scenario: forEach - Fetching indexes, keys, values from Maps
    * def keys = []
    * def vals = []
    * def idxs = []
    * def fun = 
    """
    function(x, y, i) { 
      karate.appendTo(keys, x); 
      karate.appendTo(vals, y); 
      karate.appendTo(idxs, i); 
    }
    """
    * def map = { a: 2, b: 4, c: 6 }
    * karate.forEach(map, fun)
    * match keys == ['a', 'b', 'c']
    * match vals == [2, 4, 6]
    * match idxs == [0, 1, 2]  	
		* print keys
    * print vals
    * print idxs
    
  # very useful for validating a response against a schema "super-set"
  Scenario: Schema Verification
    * def superSetSchema = { a: '#string', b: '#number', c: '#boolean' }
    * def smallResponse = { a: 'apple', c: true }
    * match smallResponse == karate.filterKeys(superSetSchema, smallResponse)  
    
  Scenario: Merge Maps object
    * def map1 = { a: 1, b:2 }
    * def map2 = { c: 3 }
    * def map = karate.merge(map1, map2 )
    * match map == { a: 1, b: 2, c:3 }
    * print map
    
	Scenario: Append List 1
    * def list1 = [2, 4, 6]
    * def list2 = [3, 9, 15]
    * def list = karate.append(list1, list2)
    * print list
  
  Scenario: Append List 2
    * def listOfObj1 = [{ a: 1 },{ b: 2 },{ c: 3 }]
    * def listOfObj2 = [{ d: 4 }]
    * def listOfObj = karate.append(listOfObj1, listOfObj2)
    * print listOfObj
    
  Scenario: sort
    * def list = [{a: { b: 3 }}, {a: { b: 1 }}, {a: { b: 2 }}]
    * def fun = function(x){ return x.a.b }
    * def sortedList = karate.sort(list, fun)
    * print sortedList
    * match sortedList == [{a: { b: 1 }}, {a: { b: 2 }}, {a: { b: 3 }}]
    * match sortedList.reverse() == [{a: { b: 3 }}, {a: { b: 2 }}, {a: { b: 1 }}]  
    
    
    
    
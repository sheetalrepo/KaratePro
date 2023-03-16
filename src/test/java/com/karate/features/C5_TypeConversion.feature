Feature: Json Transform

  Scenario: Int String Match - Fail
    * def a = 10
    * match a == '10'

  #Converting int to String using ''
  Scenario: Int to String Match - Pass
    * def a = 10+''
    * match a == '10'

  Scenario: Int to String Match - Pass
    * def a = 10+''
    * def json = {"age": #(a)}
    * match json == {"age": '10'}

  #Converting String to int
  Scenario: String to Int Match - Fail
    * def str = '20'
    * match str == 20

  #Converting String to int using *1
  Scenario: String to Int Match - Pass
    * def str = '20'*1
    * match str == 20

  Scenario: String to Int Match - Pass
    * def str = '20'
    * def json = {"age": #(str*1)}
    * match json == {"age": 20}

  #Converting String to int using JS parseInt 
  Scenario: String to Float Match - Pass
    * def foo = '10'
    * string json = { bar: '#(parseInt(foo))' }
    * match json == '{"bar":10}'

  #Converting String to int using ~~
  Scenario: String to Float Match - Pass
    * def a = '10'
    * string json = { bar: '#(~~a)' }
    * match json == '{"bar":10}'

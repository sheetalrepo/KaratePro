package com.karate;

import com.intuit.karate.junit5.Karate;

/*

mvn clean test "-Dkarate.options=--tags @prodbug" -Dtest=MyRunner5NewTest 
mvn clean test "-Dkarate.options=--tags @prodbug" -Dtest=MyRunner5NewTest -Dkarate.env="dev" 
mvn test -Dkarate.env="dev"

mvn clean test -Dtest=MyRunner5NewTest 
*/

class MyRunner5NewTest {


    @Karate.Test
    Karate testTags() {
		return Karate.run().tags().relativeTo(getClass());
    }
}




package com.karate;

import com.intuit.karate.junit5.Karate;

class MyRunner5NewTest {


    // mvn test "-Dkarate.options=--tags @prodbug" -Dtest=MyRunner5NewTest
    @Karate.Test
    Karate testTags() {
		return Karate.run().tags().relativeTo(getClass());
    }
}




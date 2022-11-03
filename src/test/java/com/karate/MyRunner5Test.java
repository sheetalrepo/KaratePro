//package com.karate;
//
//import com.intuit.karate.Results;
//import com.intuit.karate.Runner;
//import static org.junit.jupiter.api.Assertions.*;
//import org.junit.jupiter.api.Test;
//
//
//import com.intuit.karate.junit5.Karate;
//
//
////FYI: Classname should end with 'Test' as Junit picks only these classes
//class MyRunner5Test {
//
//    //@Test
//    void testParallel() {
//        Results results = Runner.path("classpath:com")
//                .outputCucumberJson(true)
//                .parallel(5);
//        assertEquals(0, results.getFailCount(), results.getErrorMessages());
//    }
//
//    //mvn clean test
//    @Karate.Test
//    Karate testTags() {
//		return Karate.run().tags("@prodbug").relativeTo(getClass());
//		//return Karate.run().tags().relativeTo(getClass());
//    	
//    }
//}

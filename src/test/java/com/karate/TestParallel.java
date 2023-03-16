package com.karate;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

//mvn clean test "-Dkarate.options=--tags @prodbug" -Dtest=TestParallel
//mvn clean test -Dtest=TestParallel
//mvn clean test -Dtest=MyRunner5NewTest
class TestParallel {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:com/karate/features").tags("~@ignore").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
package runner;

import com.intuit.karate.junit5.Karate;

public class JunitRunnerTest {

    @Karate.Test
    public Karate execute(){

        //return   Karate.run("../features/JPH01_Get_ResponseAssertions").relativeTo(getClass());
        // birden fazla test calistirmak icin ;
        //return Karate.run("classpath:features/feature1", "classpath:features/feature2").relativeTo(getClass());
     return   Karate.run("classpath:features");



    }
}

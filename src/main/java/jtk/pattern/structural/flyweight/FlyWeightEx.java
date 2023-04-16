package jtk.pattern.structural.flyweight;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

class FlyweightPatternEx {

    private static final Logger log = LoggerFactory.getLogger(FlyweightPatternEx.class);

    public static void main(String[] args) throws Exception {

        RobotFactory myfactory = new RobotFactory();
        log.info("\n***Flyweight Pattern Example***\n");

        IRobot shape = myfactory.GetRobotFromFactory("small");
        shape.Print();
                /*Here we are trying to get the objects additional 2 times. Note that from now onward we do not need to create additional small robots as we have already created this category*/
        for (int i = 0; i < 2; i++) {
            shape = myfactory.GetRobotFromFactory("small");
            shape.Print();
        }
        int NumOfDistinctRobots = myfactory.TotalObjectsCreated();
        log.info("\nDistinct Robot objects created till now= " + NumOfDistinctRobots);

                /*Here we are trying to get the objects 5 times. Note that the second time onward we do not need to create additional large robots as we have already created this category in the first attempt(at i=0)*/
        for (int i = 0; i < 5; i++) {
            shape = myfactory.GetRobotFromFactory("large");
            shape.Print();
        }

        NumOfDistinctRobots = myfactory.TotalObjectsCreated();
        log.info("\n Finally no of Distinct Robot objects created: " + NumOfDistinctRobots);
    }
}

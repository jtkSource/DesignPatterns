package jtk.pattern.flyweight;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by jubin on 2/1/17.
 */

interface IRobot {
    void Print();
}

class SmallRobot implements IRobot {
    @Override
    public void Print() {
        System.out.println(" This is a Small Robot");
    }
}

class LargeRobot implements IRobot {
    @Override
    public void Print() {
        System.out.println(" I am a Large Robot");
    }
}

public class RobotFactory {

    private Map<String, IRobot> shapes = new HashMap<String, IRobot>();

    public int TotalObjectsCreated() {
        return shapes.size();
    }

    public IRobot GetRobotFromFactory(String RobotCategory) throws Exception {
        IRobot robotCategory = null;
        if (shapes.containsKey(RobotCategory)) {
            robotCategory = shapes.get(RobotCategory);
        } else {
            switch (RobotCategory) {
                case "small":
                    System.out.println("We do not have Small Robot. So we are creating a Small Robot now.");
                    robotCategory = new SmallRobot();
                    shapes.put("small", robotCategory);
                    break;
                case "large":
                    System.out.println("We do not have Large Robot. So we are creating a Large Robot now .");
                    robotCategory = new LargeRobot();
                    shapes.put("large", robotCategory);
                    break;
                default:
                    throw new Exception(" Robot Factory can create only small and large shapes");
            }
        }
        return robotCategory;
    }

}

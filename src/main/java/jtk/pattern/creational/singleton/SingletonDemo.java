package jtk.pattern.creational.singleton;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by jubin on 2/1/17.
 */
public class SingletonDemo {
    private static final Logger log = LoggerFactory.getLogger(SingletonDemo.class);

    public static void main(String[] args) {
        log.info("***Singleton Pattern Demo***\n");
        log.info("Trying to make a captain for our team");
        MakeACaptain c1 = MakeACaptain.getCaptain();
        log.info("Trying to make another captain for our team");
        MakeACaptain c2 = MakeACaptain.getCaptain();
        if (c1 == c2)
        {
            log.info("c1 and c2 are same instance");
        }
    }

}

class MakeACaptain
{
    private static final MakeACaptain _caption = new MakeACaptain();
    //We make the constructor private to prevent the use of "new"
    private MakeACaptain() { }

    public static MakeACaptain getCaptain()
    {
        return _caption;
    }

}

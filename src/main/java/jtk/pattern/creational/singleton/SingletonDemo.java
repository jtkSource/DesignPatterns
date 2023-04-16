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
        Singleton c1 = Singleton.getInstance();
        log.info("Trying to make another captain for our team");
        Singleton c2 = Singleton.getInstance();
        if (c1 == c2)
        {
            log.info("c1 and c2 are same instance");
        }
    }
}

/**
 * This is a widely used approach for a Singleton class as it doesn’t require synchronization, is thread safe,
 * enforces lazy initialization and has comparatively less boilerplate.
 */
class Singleton  {
    private Singleton() {}
    private static class SingletonHolder {
        public static final Singleton instance = new Singleton();
    }
    public static Singleton getInstance() {
        return SingletonHolder.instance;
    }
}


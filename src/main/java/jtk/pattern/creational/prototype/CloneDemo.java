package jtk.pattern.creational.prototype;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CloneDemo {

    public static final Logger log = LoggerFactory.getLogger(CloneDemo.class);
    public static void main(String[] args) {
        Address address = new Address("Downing St 10", "London", "England");
        User pm = new User("Prime", "Minister", address);

        User shallowCopy = new User(
                pm.getFirstName(), pm.getLastName(), pm.getAddress());

        log.info("shallow copy: {} ", (shallowCopy.getAddress() == address));
        User pmCloned = pm.clone();
        log.info("shallow copy: {} ", (pmCloned.getAddress() == address));
    }
}

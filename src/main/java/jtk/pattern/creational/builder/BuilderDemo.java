package jtk.pattern.creational.builder;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BuilderDemo {

    /**
     * When the process involved in creating an object is extremely complex, with lots of mandatory and optional parameters
     * When an increase in the number of constructor parameters leads to a large list of constructors
     * When client expects different representations for the object that's constructed
     */
    private static final Logger log = LoggerFactory.getLogger(BuilderDemo.class);

    public static void main(String[] args) {
        BankAccount bandAccount = new BankAccount.BankAccountBuilder("Jon", "22738022275")
                .withEmail("jon@example.com")
                .wantNewsletter(true)
                .build();

        log.info("{}", bandAccount);
    }
}

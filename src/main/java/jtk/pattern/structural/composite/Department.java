package jtk.pattern.structural.composite;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface Department {
    Logger log = LoggerFactory.getLogger(Department.class);
    default void printDepartmentName() {
        log.info("Department Name: {}",getClass().getSimpleName());
    }
}

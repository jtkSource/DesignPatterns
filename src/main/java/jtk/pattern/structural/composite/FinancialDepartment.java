package jtk.pattern.structural.composite;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FinancialDepartment implements Department {

    private static final Logger log = LoggerFactory.getLogger(FinancialDepartment.class);
    private Integer id;
    private String name;

    public FinancialDepartment(int id, String name) {
        this.id = id;
        this.name = name;
    }
}

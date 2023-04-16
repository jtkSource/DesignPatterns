package jtk.pattern.structural.composite;

public class SalesDepartment implements Department {
    private Integer id;
    private String name;

    public SalesDepartment(int id, String name) {
        this.id = id;
        this.name = name;
    }
}

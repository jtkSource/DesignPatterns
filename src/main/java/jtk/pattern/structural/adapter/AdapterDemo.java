package jtk.pattern.structural.adapter;

/**
 * Created by jubin on 2/1/17.
 */
public class AdapterDemo {
    public static void main(String[] args) {
        System.out.println("***Adapter Pattern Demo***");
        Triangle.RectCalculatorAdapter cal=new Triangle.RectCalculatorAdapter();
        Triangle t = new Triangle(20,10);
        System.out.println("\nAdapter Pattern Example\n");
        System.out.println("Area of Triangle is :" + cal.getArea(t));
    }
}

package jtk.pattern.structural.adapter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by jubin on 2/1/17.
 */
public class AdapterDemo {
    private static final Logger log = LoggerFactory.getLogger(AdapterDemo.class);
    
    public static void main(String[] args) {
        log.info("***Adapter Pattern Demo***");
        RectAreaCalculator areaCalculator = new TriangleCalculatorAdapter();
        Rect rectangle = new Rect(2, 3);
        log.info("Rectangle {}", rectangle);
        log.info("Area of Triangle is : {}", areaCalculator.getArea(rectangle));
    }
}

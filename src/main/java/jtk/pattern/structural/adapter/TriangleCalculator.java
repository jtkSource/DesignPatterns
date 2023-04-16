package jtk.pattern.structural.adapter;

public class TriangleCalculator implements TriangleAreaCalculator {
    @Override
    public double getArea(Triangle triangle) {
        return 0.5*triangle.h*triangle.b;
    }
}

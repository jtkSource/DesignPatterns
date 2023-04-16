package jtk.pattern.structural.adapter;

public class TriangleCalculatorAdapter implements RectAreaCalculator {
    TriangleAreaCalculator triangleCalculator = new TriangleCalculator();
    Triangle triangle;

    @Override
    public double getArea(Rect r) {
        triangle = new Triangle(r.l, r.w);
        //Area of Triangle=0.5*base*height
        return triangleCalculator.getArea(triangle);
    }
}

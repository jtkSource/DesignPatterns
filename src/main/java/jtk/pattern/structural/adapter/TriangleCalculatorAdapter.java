package jtk.pattern.structural.adapter;

public class TriangleCalculatorAdapter implements RectAreaCalculator {
    RectCalculator calculator = new RectCalculator();
    Triangle triangle;

    @Override
    public double getArea(Rect r) {
        triangle = new Triangle(r.l, r.w);
        //Area of Triangle=0.5*base*height
        return calculator.getArea(new Rect(triangle.b, 0.5*triangle.h));
    }
}

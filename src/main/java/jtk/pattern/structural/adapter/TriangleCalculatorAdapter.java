package jtk.pattern.structural.adapter;

public class TriangleCalculatorAdapter implements Area {
    RectCalculator calculator = new RectCalculator();
    Triangle triangle;

    @Override
    public double getArea(Rect r) {
        triangle = new Triangle(r.l, r.w);
        //Area of Triangle=0.5*base*height
        r.l = triangle.b;
        r.w = 0.5*triangle.h;
        return calculator.getArea(r);
    }
}

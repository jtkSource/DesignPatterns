package jtk.pattern.structural.adapter;

/**
 * Created by jubin on 2/1/17.
 */

class Rect
{
    public double l;
    public double w;
}
class Triangle
{
    public double b;//base
    public double h;//height
    public Triangle(int b, int h)
    {
        this.b = b;
        this.h = h;
    }
    static class RectCalculatorAdapter{
        RectCalculator calculator;
        Triangle triangle;

        public double getArea(Triangle t)
        {
            calculator = new RectCalculator();
            triangle=t;
            Rect r = new Rect();
            //Area of Triangle=0.5*base*height
            r.l = triangle.b;
            r.w = 0.5*triangle.h;
            return calculator.getArea(r);
        }
    }

}
public class Shapes {
}

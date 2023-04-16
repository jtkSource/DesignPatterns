package jtk.pattern.structural.adapter;

/**
 * Created by jubin on 2/1/17.
 */

class Rect
{
    public double l;
    public double w;

    public Rect(double l, double w){
        this.l = l;
        this.w = w;
    }

    @Override
    public String toString() {
        return "Rect{" +
                "l=" + l +
                ", w=" + w +
                '}';
    }
}
class Triangle
{
    public double b;//base
    public double h;//height
    public Triangle(double b, double h)
    {
        this.b = b;
        this.h = h;
    }

}
public class Shapes {
}

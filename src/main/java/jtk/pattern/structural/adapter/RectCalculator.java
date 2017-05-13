package jtk.pattern.structural.adapter;

/**
 * Created by jubin on 2/1/17.
 */
public class RectCalculator {
    Rect rectangle;
    public double getArea(Rect r)
    {
        rectangle=r;
        return rectangle.l * rectangle.w;
    }

}


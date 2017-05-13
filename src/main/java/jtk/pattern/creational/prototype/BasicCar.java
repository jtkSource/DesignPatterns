package jtk.pattern.creational.prototype;

import java.util.Random;

/**
 * Created by jubin on 2/1/17.
 */

public abstract class BasicCar implements Cloneable{
    public String modelname;
    public int price;

    public String getModelname()
    {
        return modelname;
    }
    public void setModelname(String modelname)
    {
        this.modelname = modelname;
    }

    public static int setPrice()
    {
        int price = 0;
        Random r = new Random();
        int p = r.nextInt(100000);
        price = p;
        return price;
    }

    @Override
    protected BasicCar clone() throws CloneNotSupportedException {
        return (BasicCar) super.clone();
    }
}

class Nano extends BasicCar
{
    public Nano(String m)
    {
        modelname = m;
    }
    @Override
    public BasicCar clone() throws CloneNotSupportedException
    {
        return (Nano)super.clone();

    }
}
class Ford extends BasicCar
{

    public Ford(String m)
    {
        modelname = m;
    }
    @Override
    public BasicCar clone() throws CloneNotSupportedException
    {
        return (Ford)super.clone();
    }

}

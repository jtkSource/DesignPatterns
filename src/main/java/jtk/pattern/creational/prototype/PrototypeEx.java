package jtk.pattern.creational.prototype;

/**
 * Created by jubin on 2/1/17.
 */
public class PrototypeEx {

    public static void main(String[] args) throws CloneNotSupportedException
    {
        System.out.println("***Prototype Pattern Demo***\n");

        BasicCar nano_base = new Nano("Green Nano");
        nano_base.price=100000;

        BasicCar ford_basic = new Ford("Ford Yellow");
        ford_basic.price=500000;

        BasicCar nano_clone;
        //Clone Nano Object
        nano_clone =nano_base.clone();
        System.out.println("Car is: "+ nano_clone.modelname+" and it’s price is Rs."+nano_clone.price);

        //Clone Ford Object
        BasicCar ford_clone =ford_basic.clone();
        System.out.println("Car is: "+ ford_clone.modelname+" and it’s price is Rs."+ford_clone.price);

    }
}

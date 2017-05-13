package jtk.pattern.creational.builder;

/**
 * Created by jubin on 2/1/17.
 */

class Director
{
    IBuilder myBuilder;

    // A series of steps—for the production
    public void construct(IBuilder builder)
    {
        myBuilder=builder;
        myBuilder.BuildBody();
        myBuilder.InsertWheels();
        myBuilder.AddHeadlights();
    }
}

public class BuilderPattern {

    public static void main(String[] args) {
        System.out.println("***Builder Pattern Demo***\n");

        Director director = new Director();

        IBuilder carBuilder = new Car();
        IBuilder motorBuilder = new MotorCycle();

        // Making Car
        director.construct(carBuilder);
        Product p1 = carBuilder.GetVehicle();
        p1.Show();

        //Making MotorCycle
        director.construct(motorBuilder);
        Product p2 = motorBuilder.GetVehicle();
        p2.Show();

    }
}

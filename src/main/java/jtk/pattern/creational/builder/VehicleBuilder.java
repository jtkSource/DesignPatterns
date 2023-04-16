package jtk.pattern.creational.builder;

import java.util.LinkedList;

/**
 * Created by jubin on 2/1/17.
 */

interface IBuilder
{
    void BuildBody();
    void InsertWheels();
    void AddHeadlights();
    Product GetVehicle();

}

// Car is ConcreteBuilder
class Car implements IBuilder
{
    private Product product = new Product();

    @Override
    public void BuildBody()
    {
        product.Add("This is a body of a Car");
    }
    @Override
    public void InsertWheels()
    {
        product.Add("4 wheels are added");
    }
    @Override
    public void AddHeadlights()
    {
        product.Add("2 Headlights are added");
    }
    @Override
    public  Product GetVehicle()
    {
        return product;
    }

}

// Motorcycle is a ConcreteBuilder
class MotorCycle implements IBuilder
{
    private Product product = new Product();

    @Override
    public  void BuildBody()
    {
        product.Add("This is a body of a Motorcycle");
    }
    @Override
    public void InsertWheels()
    {
        product.Add("2 wheels are added");
    }
    @Override
    public void AddHeadlights()
    {
        product.Add("1 Headlights are added");
    }
    @Override
    public  Product GetVehicle()
    {
        return product;
    }
}

// "Product"
class Product
{
    // We can use any data structure that you prefer. We have used LinkedList here.
    private LinkedList<String> parts;
    public Product()
    {
        parts = new LinkedList<>();
    }

    public void Add(String part)
    {
        //Adding parts
        parts.addLast(part);
    }

    public void Show()
    {
        System.out.println("\n Product completed as below :");
        for(int i=0;i<parts.size();i++)
        {
            System.out.println(parts.get(i));
        }
    }
}


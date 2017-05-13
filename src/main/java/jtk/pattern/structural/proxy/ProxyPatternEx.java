package jtk.pattern.structural.proxy;

/**
 * Created by jubin on 2/1/17.
 */
// Subject.java

abstract class Subject
{
    public abstract void doSomeWork();
}

class ConcreteSubject extends Subject
{

    @Override
    public void doSomeWork()
    {
        System.out.println(" I am from concrete subject");
    }
}

class Proxy extends Subject
{
    ConcreteSubject cs;
    @Override
    public void doSomeWork()
    {
        System.out.println("Proxy call happening now");
        //Lazy initialization
        if (cs == null)
        {
            cs = new ConcreteSubject();
        }
        cs.doSomeWork();
    }
}

public class ProxyPatternEx
{
    public static void main(String[] args)
    {
        System.out.println("***Proxy Pattern Demo***\n");
        Proxy px = new Proxy();
        px.doSomeWork();
    }
}
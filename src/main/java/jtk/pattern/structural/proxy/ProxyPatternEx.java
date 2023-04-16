package jtk.pattern.structural.proxy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
    private static final Logger log = LoggerFactory.getLogger(Proxy.class);
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
    private static final Logger log = LoggerFactory.getLogger(ProxyPatternEx.class);
    public static void main(String[] args)
    {

        log.info("***Proxy Pattern Demo***\n");
        Proxy px = new Proxy();
        px.doSomeWork();


    }
}
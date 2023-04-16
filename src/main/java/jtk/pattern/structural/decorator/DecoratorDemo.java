package jtk.pattern.structural.decorator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by jubin on 2/1/17.
 */
public class DecoratorDemo {

    public static final Logger log = LoggerFactory.getLogger(DecoratorDemo.class);
    
    public static void main(String[] args) {
        log.info("*** Decorator pattern Demo ***");
        ConcreteComponent cc = new ConcreteComponent();

        log.info("Decorating with Ex-1...");
        ConcreteDecoratorEx_1 cd_1 = new ConcreteDecoratorEx_1();
        // Decorating ConcreteComponent Object //cc with ConcreteDecoratorEx_1
        cd_1.SetTheComponent(cc);
        cd_1.doJob();

        log.info("Decorating with Ex-2...");
        ConcreteDecoratorEx_2 cd_2= new ConcreteDecoratorEx_2();
        // Decorating ConcreteComponent Object //cc with ConcreteDecoratorEx_1 & //ConcreteDecoratorEX_2
        cd_2.SetTheComponent(cd_1);//Adding //results from cd_1 now
        cd_2.doJob();
    }

}

abstract class Component
{
    public abstract void doJob();

}
class ConcreteComponent extends Component
{
    public static final Logger log = LoggerFactory.getLogger(ConcreteComponent.class);

    @Override
    public void doJob()
    {
        log.info(" I am from Concrete Component-I am closed for modification.");

    }
}

abstract class AbstractDecorator extends Component
{
    protected Component com ;
    public void SetTheComponent(Component c)
    {
        com = c;
    }
    public void doJob()
    {
        if (com != null)
        {
            com.doJob();
        }
    }

}
class ConcreteDecoratorEx_1 extends AbstractDecorator
{
    public static final Logger log = LoggerFactory.getLogger(ConcreteDecoratorEx_1.class);
    public void doJob()
    {
        log.info("***START Ex-1***");
        super.doJob();
        //Add additional thing if necessary
        log.info("I am explicitly from Ex-1");
        log.info("***END. Ex-1***");

    }
}
class ConcreteDecoratorEx_2 extends AbstractDecorator
{
    public static final Logger log = LoggerFactory.getLogger(ConcreteDecoratorEx_2.class);
    public  void doJob()
    {
        log.info("***START Ex-2***");
        super.doJob();
        //Add additional thing if necessary
        log.info("Explicitly From DecoratorEx_2");
        log.info("***END. EX-2***");
    }
}

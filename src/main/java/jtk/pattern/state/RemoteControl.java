package jtk.pattern.state;

/**
 * Created by jubin on 2/1/17.
 */
public abstract class RemoteControl
{
    public abstract void pressSwitch(TV context);
}

class Off extends RemoteControl
{

    @Override
    public void pressSwitch(TV context){
        System.out.println("I am Off .Going to be On now");
        context.setState(new On());
    }
}

class On extends RemoteControl
{
    @Override
    public void pressSwitch(TV context)
    {
        System.out.println("I am already On .Going to be Off now");
        context.setState(new Off());
    }
}

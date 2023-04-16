package jtk.pattern.behavioural.state;

/**
 * Created by jubin on 2/1/17.
 */
public abstract class RemoteStateController
{
    public abstract void pressSwitch(TV context);
}

class Off extends RemoteStateController
{

    @Override
    public void pressSwitch(TV context){
        System.out.println("I am Off .Going to be On now");
        context.setState(new On());
    }
}

class On extends RemoteStateController
{
    @Override
    public void pressSwitch(TV context)
    {
        System.out.println("I am already On .Going to be Off now");
        context.setState(new Off());
    }
}

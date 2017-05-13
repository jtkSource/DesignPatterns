package jtk.pattern.behavioural.chainofresponsibiltiy;

public abstract class AbstractReciever implements IReceiver{
    protected final IReceiver _nextReceiver;
    public AbstractReciever(IReceiver nextReceiver){
        _nextReceiver = nextReceiver;
    }
}


class FaxErrorHandler extends AbstractReciever
{

    public FaxErrorHandler(IReceiver nextReceiver) {
        super(nextReceiver);
    }

    public Boolean ProcessMessage(Message msg)
    {
        if (msg.Text.contains("Fax"))
        {
            System.out.println("FaxErrorHandler processed "+  msg.Priority+ "priority issue: "+ msg.Text);
            return true;
        }
        else
        {
            if (_nextReceiver != null)
                _nextReceiver.ProcessMessage(msg);
        }
        return false;
    }
}

class EmailErrorHandler extends AbstractReciever
{

    public EmailErrorHandler(IReceiver nextReceiver) {
        super(nextReceiver);
    }

    public Boolean ProcessMessage(Message msg)
    {
        if (msg.Text.contains("Email"))
        {
            System.out.println("EmailErrorHandler processed "+ msg.Priority+ "priority issue: "+ msg.Text);
            return true;
        }
        else
        {
            if (_nextReceiver != null)
                _nextReceiver.ProcessMessage(msg);
        }
        return false;
    }
}

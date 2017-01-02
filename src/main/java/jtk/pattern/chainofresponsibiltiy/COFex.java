package jtk.pattern.chainofresponsibiltiy;

/**
 * Created by jubin on 2/1/17.
 */
public class COFex {

    public static void main(String[] args) {
        System.out.println("***Chain of Responsibility Pattern Demo***\n");
        //Making the chain first: IssueRaiser->FaxErrorhandler->EmailErrorHandler
        IReceiver faxHandler, emailHandler;
        //end of chain
        emailHandler = new EmailErrorHandler(null);
        //fax handler is before email
        faxHandler = new FaxErrorHandler(emailHandler);

        //starting point: raiser will raise issues and set the first handler
        IssueRaiser raiser = new IssueRaiser (faxHandler);

        Message m1 = new Message("Fax is reaching late to the destination", Message.MessagePriority.Normal);
        Message m2 = new Message("Email is not going", Message.MessagePriority.High);
        Message m3 = new Message("In Email, BCC field is disabled occasionally", Message.MessagePriority.Normal);
        Message m4 = new Message("Fax is not reaching destination", Message.MessagePriority.High);

        raiser.RaiseMessage(m1);
        raiser.RaiseMessage(m2);
        raiser.RaiseMessage(m3);
        raiser.RaiseMessage(m4);

    }
}

class IssueRaiser
{
    public IReceiver setFirstReceiver;
    public IssueRaiser(IReceiver firstReceiver)
    {
        this.setFirstReceiver = firstReceiver;
    }
    public void RaiseMessage(Message msg)
    {

        if (setFirstReceiver != null)
            setFirstReceiver.ProcessMessage(msg);
    }
}

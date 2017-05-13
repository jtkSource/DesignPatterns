package jtk.pattern.behavioural.chainofresponsibiltiy;

/**
 * Created by jubin on 2/1/17.
 */
public class Message {
    public enum MessagePriority
    {
        Normal,
        High
    }

    public String Text;
    public MessagePriority Priority;

    public Message(String msg, MessagePriority p) {
        Text = msg;
        this.Priority = p;
    }
}

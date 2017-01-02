package jtk.pattern.chainofresponsibiltiy;

/**
 * Created by jubin on 2/1/17.
 */
public interface IReceiver {
    Boolean ProcessMessage(Message msg);
}


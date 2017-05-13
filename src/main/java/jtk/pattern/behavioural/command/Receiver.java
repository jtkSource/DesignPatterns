package jtk.pattern.behavioural.command;

/**
 * Created by jubin on 2/1/17.
 */
//Receiver Class
public class Receiver
{
    public void performUndo()
    {
        System.out.println("Executing -MyUndoCommand");
    }
    public void performRedo()
    {
        System.out.println("Executing -MyRedoCommand");
    }
}

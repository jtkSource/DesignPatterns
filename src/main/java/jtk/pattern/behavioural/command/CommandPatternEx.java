package jtk.pattern.behavioural.command;

/**
 * Created by jubin on 2/1/17.
 */
class CommandPatternEx
{
    public static void main(String[] args)
    {
        System.out.println("***Command Pattern Demo***\n");
        Receiver intendedreceiver=new Receiver();
                /*Client holds Invoker and Command Objects*/
        Invoke inv = new Invoke();
        MyUndoCommand unCmd = new MyUndoCommand(intendedreceiver);
        MyRedoCommand reCmd = new MyRedoCommand(intendedreceiver);
        inv.executeCommand(unCmd);
        inv.executeCommand(reCmd);


    }
}

package jtk.pattern.behavioural.command;

/**
 * Created by jubin on 2/1/17.
 */
public class Invoke
{
    ICommand cmd;

    public void executeCommand(ICommand cmd)
    {
        this.cmd=cmd;
        cmd.execute();
    }
}
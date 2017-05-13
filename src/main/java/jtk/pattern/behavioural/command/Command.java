package jtk.pattern.behavioural.command;

/**
 * Created by jubin on 2/1/17.
 */

abstract class ICommand
{
    protected final Receiver receiver;

    protected ICommand(Receiver receiver) {
        this.receiver = receiver;
    }

    abstract public void execute();
}

class MyUndoCommand extends ICommand {

    protected MyUndoCommand(Receiver receiver) {
        super(receiver);
    }

    @Override
    public void execute() {
        receiver.performUndo();
    }

}
class MyRedoCommand extends ICommand {

    protected MyRedoCommand(Receiver receiver) {
        super(receiver);
    }

    @Override
    public void execute() {
        receiver.performRedo();
    }
}

public class Command extends ICommand {

    protected Command(Receiver receiver) {
        super(receiver);
    }

    @Override
    public void execute() {

    }
}

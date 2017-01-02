package jtk.pattern.mediator;

/**
 * Created by jubin on 2/1/17.
 */
public class Employee {

    protected final String type;
    protected final Mediator mediator;
    protected final String name;

    private final String headLog;

    public Employee(String name , String type, Mediator mediator) {
        this.type = type;
        this.mediator = mediator;
        this.name = name;
        this.headLog = "["+name+" here] ";
    }

    public String getType() {
        return type;
    }

    public void send(String msg){
        mediator.send(this,headLog+msg);
    }

    public void notifyEmployee(String msg) {
        System.out.println(name + " gets message: "+ msg);
    }
}

class Moderator extends Employee{

    public Moderator(String name, String type, Mediator mediator) {
        super(name,type, mediator);
    }

    public void notifyEmployee(String msg) {
        System.out.println("Moderator gets message: "+ msg);
    }

}

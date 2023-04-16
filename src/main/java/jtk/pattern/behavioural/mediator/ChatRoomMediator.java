package jtk.pattern.behavioural.mediator;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jubin on 2/1/17.
 */

abstract class Mediator
{
    public abstract void send(Employee frd, String msg);
}
public class ChatRoomMediator extends Mediator{
    private List<Employee> employees = new ArrayList<>();
    private Moderator moderator;
    private final String room;

    public ChatRoomMediator(String room) {
        this.room = room;
    }
    public ChatRoomMediator addEmployee(Employee e){
        employees.add(e);
        return this;
    }
    public void setModerator(Moderator m){
        moderator=m;
    }
    @Override
    public void send(Employee frd, String msg) {

        employees.stream().filter(t->!t.name.equals(frd.name))
                .forEach(t->t.notifyEmployee(msg));
        if(frd.getType().equals("team")){
            moderator.notifyEmployee(frd.name + " sends message to " + room);
        }
    }
}

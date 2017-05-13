package jtk.pattern.behavioural.mediator;

/**
 * Created by jubin on 2/1/17.
 */
public class MediatterEx {

    public static void main(String[] args) {
        System.out.println("***Mediator Pattern Demo***\n");
        ChatRoomMediator chatRoomMediator = new ChatRoomMediator("risk");

        Employee em1 = new Employee("Jubin","team",chatRoomMediator);
        Employee em2 = new Employee("Feba","team",chatRoomMediator);
        Employee em3 = new Employee("Nithin","team",chatRoomMediator);
        Moderator m1 = new Moderator("Ben","admin",chatRoomMediator);
        chatRoomMediator.setModerator(m1);
        chatRoomMediator.addEmployee(em1).addEmployee(em2).addEmployee(em3);

        em1.send(" Good Morrning. Can we discuss the mediator pattern?\"");
        em2.send("No");
        m1.send("Hey! dont be rude");

        }

}

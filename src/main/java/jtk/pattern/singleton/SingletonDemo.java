package jtk.pattern.singleton;

/**
 * Created by jubin on 2/1/17.
 */
public class SingletonDemo {

    public static void main(String[] args) {
        System.out.println("***Singleton Pattern Demo***\n");
        System.out.println("Trying to make a captain for our team");
        MakeACaptain c1 = MakeACaptain.getCaptain();
        System.out.println("Trying to make another captain for our team");
        MakeACaptain c2 = MakeACaptain.getCaptain();
        if (c1 == c2)
        {
            System.out.println("c1 and c2 are same instance");
        }
    }

}

class MakeACaptain
{
    private static MakeACaptain _captain;
    //We make the constructor private to prevent the use of "new"
    private MakeACaptain() { }

    public static MakeACaptain getCaptain()
    {
        return SingletonHelper._caption;

    }

    private static class SingletonHelper{
        private static final MakeACaptain _caption = new MakeACaptain();
    }
}

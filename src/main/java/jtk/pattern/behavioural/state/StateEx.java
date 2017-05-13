package jtk.pattern.behavioural.state;

/**
 * Created by jubin on 2/1/17.
 */
public class StateEx {
    public static void main(String[] args)
    {
        System.out.println("***State Pattern Demo***\n");
        //Initially TV is Off
        Off initialState = new Off();
        TV tv = new TV(initialState);
        //First time press
        tv.pressButton();
        //Second time press
        tv.pressButton();
    }
}

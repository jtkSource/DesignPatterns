package jtk.pattern.state;

/**
 * Created by jubin on 2/1/17.
 */
public class TV {

    private RemoteControl state;

    public RemoteControl getState() {
        return state;
    }
    public void setState(RemoteControl state) {
        this.state = state;
    }
    public TV(RemoteControl state)
    {
        this.state=state;
    }
    public void pressButton()
    {
        state.pressSwitch(this);
    }
}

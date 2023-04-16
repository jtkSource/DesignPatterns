package jtk.pattern.behavioural.state;

/**
 * Created by jubin on 2/1/17.
 */
public class TV {

    private RemoteStateController state;

    public RemoteStateController getState() {
        return state;
    }
    public void setState(RemoteStateController state) {
        this.state = state;
    }
    public TV(RemoteStateController state)
    {
        this.state=state;
    }
    public void pressButton()
    {
        state.pressSwitch(this);
    }
}

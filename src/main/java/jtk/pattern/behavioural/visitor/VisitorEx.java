package jtk.pattern.behavioural.visitor;

import java.time.Instant;
import java.util.Calendar;

/**
 * Created by jubin on 1/1/17.
 */

interface  IVistor<T>{
    void visit(T t );
}

class TemporalVisitor implements IVistor<IPrayer>{

    public void visit(IPrayer iPrayer) {
        Calendar afternoon  =  Calendar.getInstance();
        afternoon.set(Calendar.HOUR,12);
        if (Instant.now().isBefore(Instant.ofEpochMilli(afternoon.getTimeInMillis()))){
            iPrayer.setTime("morning");
        }else
            iPrayer.setTime("evening");
    }
}

class SeasonalVisitor implements IVistor<IPrayer>{

    @Override
    public void visit(IPrayer iPrayer) {
        Calendar christmass  =  Calendar.getInstance();
        christmass.set(Calendar.MONTH,12);
        Calendar month =  Calendar.getInstance();
        month.setTimeInMillis(Instant.now().toEpochMilli());
        if (month.get(Calendar.MONTH)==12){
            iPrayer.setTime("christmass");
        }else
            iPrayer.setTime("normal");
        }
}

interface IPrayer<V extends IVistor>{
    void setTime(String time);
    void sayPrayer();
    default void accept(V v){
        v.visit(this);
    }
}

class Xtian implements IPrayer<IVistor>{

    private String time;

    public void setTime(String time) {
        this.time = time;
    }

    public void sayPrayer() {
        System.out.println("Say "+ time + " prayer");
    }

}


public class VisitorEx {

    public static void main(String[] args) {
        TemporalVisitor visitor = new TemporalVisitor();
        SeasonalVisitor seasonalVisitor = new SeasonalVisitor();
        Xtian xtian = new Xtian();
        xtian.accept(visitor);
        xtian.sayPrayer();
        xtian.accept(seasonalVisitor);
        xtian.sayPrayer();
    }

}

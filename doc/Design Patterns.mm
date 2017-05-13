<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1483283433748" ID="ID_414967311" MODIFIED="1494518974996" TEXT="Design Patterns">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      https://dzone.com/articles/the-solid-principles-in-real-life
    </p>
    <p>
      
    </p>
    <p>
      <b>S - Single&#160;&#160;Responsibility </b>
    </p>
    <p>
      
    </p>
    <p>
      The single responsibility principle (SRP) asserts that a class or module should do one thing only. Now, this is kind of subjective, so the principle is reinforced with the heuristic that the class or module should have only one reason to change.
    </p>
    <p>
      
    </p>
    <p>
      <b>O is for Open/Closed Principle </b>
    </p>
    <p>
      
    </p>
    <p>
      The Open/Closed Principle states that code entities should be open for extension, but closed for modification. To put this more concretely, you should write a class that does what it needs to flawlessly and not assuming that people should come in and change it later. It's closed for modification, but it can be extended by, for instance, inheriting from it and overriding or extending certain behaviors.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>L is for Liskov Substitution Principle </b>
    </p>
    <p>
      
    </p>
    <p>
      The Liskov Substitution Principle (LSP) is the one here that is most unique to object-oriented programming. The LSP says, basically, that<b>&#160;any child type of a parent type should be able to stand in for that parent without things blowing up.</b>
    </p>
    <p>
      In other words, if you have a class, Animal, with a MakeNoise() method, then any subclass of Animal should reasonably implement MakeNoise(). Cats should meow, dogs should bark, etc. What you wouldn't do is define a MuteMouse class that throws IDontActuallyMakeNoiseException. This violates the LSP, and the argument would be that this class has no business inheriting from Animal.
    </p>
    <p>
      
    </p>
    <p>
      <b>I is for Interface Segregation Principle</b>
    </p>
    <p>
      
    </p>
    <p>
      The Interface Segregation Principle (ISP) says that you should favor many, smaller, client-specific interfaces over one larger, more monolithic interface. In short, you don't want to force clients to depend on things they don't actually need. Imagine your code consuming some big, fat interface and having to re-compile/deploy with annoying frequency because some method you don't even care about got a new signature.
    </p>
    <p>
      
    </p>
    <p>
      <b>D is for Dependency Inversion</b>
    </p>
    <p>
      
    </p>
    <p>
      The Dependency Inversion Principle (DIP) encourages you to write code that depends upon abstractions rather than upon concrete details. You can recognize this in the code you read by looking for a class or method that takes something generic like &quot;Stream&quot; and performs operations on it, as opposed to instantiating a specific Filestream or Stringstream or whatever. This gives the code in question a lot more flexibility -- you can swap in anything that conforms to the Stream abstraction and it will still work.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1483321373193" ID="ID_492527716" MODIFIED="1494521376914" POSITION="right" TEXT="Behavioural Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    Behavioral design patterns are design patterns that identify common communication patterns between objects and realize these patterns. By doing so, these patterns increase flexibility in carrying out this communication
  </body>
</html>
</richcontent>
<node CREATED="1483286558293" FOLDED="true" ID="ID_1294085447" MODIFIED="1483351787799" TEXT="InterpreterPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    This pattern involves implementing an expression interface which tells to interpret a particular context. This pattern is used in SQL parsing, symbol processing engine etc.

    <p>
      
    </p>
    <p>
      If the grammar is complex (e.g., it may have many constraints/rules), implementing this pattern becomes hard. For each rule, we may need to implement a new class, and obviously it is a cumbersome process.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<node CREATED="1483322309678" ID="ID_300461002" MODIFIED="1483322321845">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="9781484218013_unFig24-01.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483283500144" ID="ID_517121359" MODIFIED="1494521498607" TEXT="VisitorPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4">This pattern helps us to add new functionalities to an existing object structure in such a way that the old structure remains unaffected by these changes. So, we can follow the open/close principle here (i.e., extension allowed but modification disallowed for entities like class, function, modules, etc.). </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">Plugging into public APIs is a common example. Then a client can perform his desired operations without modifying the actual code (with a visiting class). </font>
    </p>
    <p>
      
    </p>
    <p>
      <b><font size="4">Sometimes we need to perform some unrelated operations on the objects in the existing architecture. But these operations can directly/indirectly affect the classes in the system. In those situations, this pattern can help us by putting all of these operations in the visitor hierarchy. </font></b>
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080" size="4"><b>interface  </b></font><font size="4">IVistor&lt;</font><font color="#20999d" size="4">T</font><font size="4">&gt;{<br size="4" />    </font><font color="#000080" size="4"><b>void </b></font><font size="4">visit(</font><font color="#20999d" size="4">T </font><font size="4">t );<br size="4" />}<br size="4" /><br size="4" /></font><font color="#000080" size="4"><b>class </b></font><font size="4">TemporalVisitor </font><font color="#000080" size="4"><b>implements </b></font><font size="4">IVistor&lt;IPrayer&gt;{<br size="4" /><br size="4" />    </font><font color="#000080" size="4"><b>public void </b></font><font size="4">visit(IPrayer iPrayer) { // takes the object to be visitied<br size="4" />        Calendar afternoon  =  Calendar.<i>getInstance</i>();<br size="4" />        afternoon.set(Calendar.</font><font color="#660e7a" size="4"><b><i>HOUR</i></b></font><font size="4">,</font><font color="#0000ff" size="4">12</font><font size="4">);<br size="4" />        </font><font color="#000080" size="4"><b>if </b></font><font size="4">(Instant.<i>now</i>().isBefore(Instant.<i>ofEpochMilli</i>(afternoon.getTimeInMillis()))){<br size="4" />            iPrayer.setTime(</font><font color="#008000" size="4"><b>&quot;morning&quot;</b></font><font size="4">);<br size="4" />        }</font><font color="#000080" size="4"><b>else<br size="4" />            </b></font><font size="4">iPrayer.setTime(</font><font color="#008000" size="4"><b>&quot;evening&quot;</b></font><font size="4">);<br size="4" />    }<br size="4" />}<br size="4" />
</font><font color="#000080" size="4"><b>interface </b></font><font size="4">IPrayer&lt;</font><font color="#20999d" size="4">V </font><font color="#000080" size="4"><b>extends </b></font><font size="4">IVistor&gt;{<br size="4" />    </font><font color="#000080" size="4"><b>void </b></font><font size="4">setTime(String time);<br size="4" />    </font><font color="#000080" size="4"><b>void </b></font><font size="4">sayPrayer();<br size="4" />    </font><font color="#000080" size="4"><b>void </b></font><font size="4">accept(</font><font color="#20999d" size="4">V </font><font size="4">v);<br size="4" />}<br size="4" /><br size="4" /></font><font color="#000080" size="4"><b>class </b></font><font size="4">Xtian </font><font color="#000080" size="4"><b>implements </b></font><font size="4">IPrayer&lt;IVistor&gt;{<br size="4" /><br size="4" />    </font><font color="#000080" size="4"><b>private </b></font><font size="4">String </font><font color="#660e7a" size="4"><b>time</b></font><font size="4">;<br size="4" /><br size="4" />    </font><font color="#000080" size="4"><b>public void </b></font><font size="4">setTime(String time) {<br size="4" />        </font><font color="#000080" size="4"><b>this</b></font><font size="4">.</font><font color="#660e7a" size="4"><b>time </b></font><font size="4">= time;<br size="4" />    }<br size="4" /><br size="4" />    </font><font color="#000080" size="4"><b>public void </b></font><font size="4">sayPrayer() {<br size="4" />        System.</font><font color="#660e7a" size="4"><b><i>out</i></b></font><font size="4">.println(</font><font color="#008000" size="4"><b>&quot;Say &quot;</b></font><font size="4">+ </font><font color="#660e7a" size="4"><b>time </b></font><font size="4">+ </font><font color="#008000" size="4"><b>&quot;prayer&quot;</b></font><font size="4">);<br size="4" />    }<br size="4" /><br size="4" />    </font><font color="#808000" size="4">@Override<br size="4" />    </font><font color="#000080" size="4"><b>public void </b></font><font size="4">accept(IVistor v) { // takes the visitor to modify the class behaviour wihtout changing the class <br size="4" />        v.visit(</font><font color="#000080" size="4"><b>this</b></font><font size="4">);<br size="4" />    }<br size="4" /></font></pre>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080" size="4"><b>public static void </b></font><font size="4">main(String[] args) {<br size="4" />    TemporalVisitor visitor = </font><font color="#000080" size="4"><b>new </b></font><font size="4">TemporalVisitor(); // create a factory of visitors that can be pass to the object to change the behaviour . Seems similar to strategy pattern<br size="4" />    Xtian visitorIPrayer = </font><font color="#000080" size="4"><b>new </b></font><font size="4">Xtian();<br size="4" />    visitorIPrayer.accept(visitor);<br size="4" />    visitorIPrayer.sayPrayer();<br size="4" />}<br size="4" /></font></pre>
    <p>
      <font size="4">Say morningprayer </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">http://stackoverflow.com/questions/8665295/what-is-the-difference-between-strategy-pattern-and-visitor-pattern </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">Strategy pattern required specifying the strategy when the object is constructed. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">Visitor pattern specify the strategy on demand so can be applied to many visitors </font>
    </p>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font size="4">TemporalVisitor visitor = </font><font color="#000080" size="4"><b>new </b></font><font size="4">TemporalVisitor();<br size="4" />SeasonalVisitor seasonalVisitor = </font><font color="#000080" size="4"><b>new </b></font><font size="4">SeasonalVisitor();<br size="4" />Xtian xtian = </font><font color="#000080" size="4"><b>new </b></font><font size="4">Xtian();<br size="4" /><b>xtian.accept(visitor);<br size="4" /></b>xtian.sayPrayer();</font></pre>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font size="4">TemporalVisitor visitor = </font><font color="#000080" size="4"><b>new </b></font><font size="4">TemporalVisitor();<br size="4" />SeasonalVisitor seasonalVisitor = </font><font color="#000080" size="4"><b>new </b></font><font size="4">SeasonalVisitor();<br size="4" />Xtian xtian = </font><font color="#000080" size="4"><b>new </b></font><font size="4">Xtian();<br size="4" />xtian.accept(visitor);<br size="4" />xtian.sayPrayer();<br size="4" />xtian.accept(seasonalVisitor);<br size="4" />xtian.sayPrayer();<br size="4" /></font></pre>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font size="4"><br size="4" />









xtian.sayPrayer();<br size="4" /></font></pre>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1483325719722" FOLDED="true" ID="ID_1611449385" MODIFIED="1491746385775" TEXT="Chain Of Responsibility">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      With this pattern, we constitute a chain where each of the processing objects can have some logic to handle a particular type of command object. After one&#8217;s processing is done, if anything is still pending, it can be forwarded to the next object in the chain. We can add new objects anytime at the end of a chain.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
<node CREATED="1483326956967" ID="ID_1375364684" MODIFIED="1483327438885">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="chain_of_responsibility.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public interface </b></font>IReceiver {<br />    Boolean ProcessMessage(Message msg);<br />}</pre>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public abstract class </b></font>AbstractReciever <font color="#000080"><b>implements </b></font>IReceiver{<br />&#160;&#160;&#160; <font color="#000080"><b>protected final </b></font>IReceiver <font color="#660e7a"><b>_nextReceiver</b></font>;<br /><b>&#160;&#160;&#160; <font color="#000080">public </font>AbstractReciever(IReceiver nextReceiver){ // chained to the next reciever to process the message<br /></b>&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a"><b>_nextReceiver </b></font>= nextReceiver;<br />&#160;&#160;&#160;&#160;}<br />}<br /><br /><br /><font color="#000080"><b>class </b></font>FaxErrorHandler <font color="#000080"><b>extends </b></font>AbstractReciever<br />{<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>FaxErrorHandler(IReceiver nextReceiver) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>super</b></font>(nextReceiver);<br />&#160;&#160;&#160;&#160;}<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>Boolean ProcessMessage(Message msg)<br />&#160;&#160;&#160;&#160;{<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>if </b></font>(msg.<font color="#660e7a"><b>Text</b></font>.contains(<font color="#008000"><b>&quot;Fax&quot;</b></font>))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;FaxErrorHandler processed &quot;</b></font>+&#160;&#160;msg.<font color="#660e7a"><b>Priority</b></font>+ <font color="#008000"><b>&quot;priority issue: &quot;</b></font>+ msg.<font color="#660e7a"><b>Text</b></font>);<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>return true</b></font>;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>else<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; </b></font>{<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>if </b></font>(<font color="#660e7a"><b>_nextReceiver </b></font>!= <font color="#000080"><b>null</b></font>)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a"><b>_nextReceiver</b></font>.ProcessMessage(msg);<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>return false</b></font>;<br />&#160;&#160;&#160;&#160;}<br />}<br /><br /><font color="#000080"><b>class </b></font>EmailErrorHandler <font color="#000080"><b>extends </b></font>AbstractReciever<br />{<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>EmailErrorHandler(IReceiver nextReceiver) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>super</b></font>(nextReceiver);<br />&#160;&#160;&#160;&#160;}<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>Boolean ProcessMessage(Message msg)<br />&#160;&#160;&#160;&#160;{<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>if </b></font>(msg.<font color="#660e7a"><b>Text</b></font>.contains(<font color="#008000"><b>&quot;Email&quot;</b></font>))<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;EmailErrorHandler processed &quot;</b></font>+ msg.<font color="#660e7a"><b>Priority</b></font>+ <font color="#008000"><b>&quot;priority issue: &quot;</b></font>+ msg.<font color="#660e7a"><b>Text</b></font>);<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>return true</b></font>;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>else<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; </b></font>{<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>if </b></font>(<font color="#660e7a"><b>_nextReceiver </b></font>!= <font color="#000080"><b>null</b></font>)<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a"><b>_nextReceiver</b></font>.ProcessMessage(msg);<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>return false</b></font>;<br />&#160;&#160;&#160;&#160;}<br />}</pre>
    <p>
      
    </p>
    <p>
      <b>//class thats is instantiated with the chain of&#160;actions to execute </b>
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>class </b></font>IssueRaiser<br />{<br />    <font color="#000080"><b>public </b></font>IReceiver <font color="#660e7a"><b>setFirstReceiver</b></font>;<br />    <font color="#000080"><b>public </b></font>IssueRaiser(IReceiver firstReceiver)<br />    {<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>setFirstReceiver </b></font>= firstReceiver;<br />    }<br />    <font color="#000080"><b>public void </b></font>RaiseMessage(Message msg)<br />    {<br />        <font color="#000080"><b>if </b></font>(<font color="#660e7a"><b>setFirstReceiver </b></font>!= <font color="#000080"><b>null</b></font>)<br />            <font color="#660e7a"><b>setFirstReceiver</b></font>.ProcessMessage(msg);<br />    }<br />}<br /></pre>
    <p>
      
    </p>
    <p>
      Main
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><br />




<font color="#000080"><b>public static void </b></font>main(String[] args) {<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Chain of Responsibility Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br />    <font color="#808080"><i>//Making the chain first: IssueRaiser-&gt;FaxErrorhandler-&gt;EmailErrorHandler<br />    </i></font>IReceiver faxHandler, emailHandler;<br />    <font color="#808080"><i>//end of chain<br />    </i></font>emailHandler = <font color="#000080"><b>new </b></font>EmailErrorHandler(<font color="#000080"><b>null</b></font>);<br />    <font color="#808080"><i>//fax handler is before email<b><br />    </b></i></font><b>faxHandler = <font color="#000080">new </font>FaxErrorHandler(emailHandler);//chained to the email handler</b><br /><br />    <font color="#808080"><i>//starting point: <b>raiser will raise issues and set the first handler</b><br />    </i></font>IssueRaiser raiser = <font color="#000080"><b>new </b></font>IssueRaiser (faxHandler);<br /><br />    Message m1 = <font color="#000080"><b>new </b></font>Message(<font color="#008000"><b>&quot;Fax is reaching late to the destination&quot;</b></font>, Message.MessagePriority.<font color="#660e7a"><b><i>Normal</i></b></font>);<br />    Message m2 = <font color="#000080"><b>new </b></font>Message(<font color="#008000"><b>&quot;Email is not going&quot;</b></font>, Message.MessagePriority.<font color="#660e7a"><b><i>High</i></b></font>);<br />    Message m3 = <font color="#000080"><b>new </b></font>Message(<font color="#008000"><b>&quot;In Email, BCC field is disabled occasionally&quot;</b></font>, Message.MessagePriority.<font color="#660e7a"><b><i>Normal</i></b></font>);<br />    Message m4 = <font color="#000080"><b>new </b></font>Message(<font color="#008000"><b>&quot;Fax is not reaching destination&quot;</b></font>, Message.MessagePriority.<font color="#660e7a"><b><i>High</i></b></font>);<br /><br />    raiser.RaiseMessage(m1);<br />    raiser.RaiseMessage(m2);<br />    raiser.RaiseMessage(m3);<br />    raiser.RaiseMessage(m4);<br /><br />}</pre>
    <p>
      
    </p>
    <p>
      This pattern taked an object that needs to be processed and passes it through the chain of handlers to execute the object
    </p>
    <p>
      .
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483328731021" FOLDED="true" ID="ID_1138343822" MODIFIED="1491746351287" TEXT="MediatorPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A mediator is the one who takes the responsibility of communication among a group of objects. The mediator acts as an intermediary who can track the communication between two objects. The other objects in the system are also aware of this mediator and they know that if they need to communicate among themselves, they need to go through the mediator.
    </p>
    <p>
      
    </p>
    <p>
      The advantage of using such a mediator is that we can reduce the direct interconnections among the objects and thus lower the coupling.
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        This pattern reduces the number of subclasses in the system and it also enhances the loose coupling in the system.
      </li>
      <li>
        Here the &#8220;many-to-many&#8221; relationship is replaced with the &#8220;one-to-many&#8221; relationship&#8212;which is much easier to read and understand.
      </li>
      <li>
        We can provide a centralized control with this pattern.
      </li>
    </ul>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
<node CREATED="1483329006242" ID="ID_913188347" MODIFIED="1483336551913">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The ConcreteMediator here knows about all the objects and calls the respective functions on (all/some) of the objects when an object performs&#160;&#160;a method call.
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>abstract class </b></font>Mediator<br />{<br />&#160;&#160;&#160; <font color="#000080"><b>public abstract void </b></font>send(Employee frd, String msg);<br />}<br /><font color="#000080"><b>public class </b></font>ChatRoomMediator <font color="#000080"><b>extends </b></font>Mediator{<br />&#160;&#160;&#160; <font color="#000080"><b>private </b></font>List&lt;Employee&gt; <font color="#660e7a"><b>employees </b></font>= <font color="#000080"><b>new </b></font>ArrayList&lt;&gt;();<br />&#160;&#160;&#160; <font color="#000080"><b>private </b></font>Moderator <font color="#660e7a"><b>moderator</b></font>;<br />&#160;&#160;&#160; <font color="#000080"><b>private final </b></font>String <font color="#660e7a"><b>room</b></font>;<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>ChatRoomMediator(String room) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>room </b></font>= room;<br />&#160;&#160;&#160;&#160;}<br />&#160;<b>&#160;&#160; <font color="#000080">public </font>ChatRoomMediator addEmployee(Employee e){ // adds the employee to this this caht<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a">employees</font>.add(e);<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080">return this</font>;<br />&#160;&#160;&#160;&#160;}<br />&#160;&#160;&#160; <font color="#000080">public void </font>setModerator(Moderator m){ //adds the moderator<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a">moderator</font>=m;<br />&#160;&#160;&#160;&#160;}<br />&#160;</b>&#160;&#160; <font color="#808000">@Override<br />&#160;&#160;&#160; </font><font color="#000080"><b>public void </b></font>send(Employee frd, String msg) {<br /><font color="#660e7a"><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;employees</b></font>.stream().filter(t-&gt;!t.<font color="#660e7a"><b>name</b></font>.equals(<font color="#660e7a">frd</font>.<font color="#660e7a"><b>name</b></font>)).forEach(t-&gt;<b>t.notifyEmployee</b>(<font color="#660e7a">msg</font>));<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>if</b></font>(frd.getType().equals(<font color="#008000"><b>&quot;team&quot;</b></font>)){<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a"><b>moderator</b></font><b>.notifyEmployee</b>(frd.<font color="#660e7a"><b>name </b></font>+ <font color="#008000"><b>&quot; sends message to &quot; </b></font>+ <font color="#660e7a"><b>room</b></font>);<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}</pre>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt">&#160;&#160;&#160;&#160;}<br />}<br /></pre>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public class </b></font>Employee {<br /><br />&#160;&#160;&#160; <font color="#000080"><b>protected final </b></font>String <font color="#660e7a"><b>type</b></font>;<b><br />&#160;&#160;&#160; <font color="#000080">protected final </font>Mediator <font color="#660e7a">mediator</font>; // the objects function call is made through an mediator that orchestrates how other similar objects are called</b><br />&#160;&#160;&#160; <font color="#000080"><b>protected final </b></font>String <font color="#660e7a"><b>name</b></font>;<br /><br />&#160;&#160;&#160; <font color="#000080"><b>private final </b></font>String <font color="#660e7a"><b>headLog</b></font>;<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>Employee(String name , String type, Mediator mediator) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>type </b></font>= type;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>mediator </b></font>= mediator;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>name </b></font>= name;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>headLog </b></font>= <font color="#008000"><b>&quot;[&quot;</b></font>+name+<font color="#008000"><b>&quot; here] &quot;</b></font>;<br />&#160;&#160;&#160;&#160;}<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>String getType() {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>return </b></font><b><font color="#660e7a">type</font></b>;<br />&#160;&#160;&#160;&#160;}<br /><b><br />&#160;&#160;&#160; <font color="#000080">public void </font>send(String msg){ // called by the meditor on 'this' object</b><br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a"><b>mediator</b></font>.send(<font color="#000080"><b>this</b></font>,<font color="#660e7a"><b>headLog</b></font>+msg);<br />&#160;&#160;&#160;&#160;}<br />&#160;&#160;&#160; <font color="#000080"><b>public void </b></font>notifyEmployee(String msg) { // <b>called by the mediator on the 'other' objects</b><br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#660e7a"><b>name </b></font>+ <font color="#008000"><b>&quot; gets message: &quot;</b></font>+ msg);<br />&#160;&#160;&#160;&#160;}
<br />}<br /><br /><font color="#000080"><b>class </b></font>Moderator <font color="#000080"><b>extends </b></font>Employee{<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public </b></font>Moderator(String name, String type, Mediator mediator) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>super</b></font>(name,type, mediator);<br />&#160;&#160;&#160;&#160;}<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public void </b></font>notifyEmployee(String msg) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Moderator gets message: &quot;</b></font>+ msg);<br />&#160;&#160;&#160;&#160;}<br /><br />}<br /></pre>
    <p>
      //Main
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public static void </b></font>main(String[] args) {<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Mediator Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br />    ChatRoomMediator chatRoomMediator = <font color="#000080"><b>new </b></font>ChatRoomMediator(<font color="#008000"><b>&quot;risk&quot;</b></font>);<br /><br />    Employee em1 = <font color="#000080"><b>new </b></font>Employee(<font color="#008000"><b>&quot;Jubin&quot;</b></font>,<font color="#008000"><b>&quot;team&quot;</b></font>,chatRoomMediator);<br />    Employee em2 = <font color="#000080"><b>new </b></font>Employee(<font color="#008000"><b>&quot;Feba&quot;</b></font>,<font color="#008000"><b>&quot;team&quot;</b></font>,chatRoomMediator);<br />    Employee em3 = <font color="#000080"><b>new </b></font>Employee(<font color="#008000"><b>&quot;Nithin&quot;</b></font>,<font color="#008000"><b>&quot;team&quot;</b></font>,chatRoomMediator);<br />    Moderator m1 = <font color="#000080"><b>new </b></font>Moderator(<font color="#008000"><b>&quot;Ben&quot;</b></font>,<font color="#008000"><b>&quot;admin&quot;</b></font>,chatRoomMediator);<br />    chatRoomMediator.setModerator(m1);<br />    chatRoomMediator.addEmployee(em1).addEmployee(em2).addEmployee(em3);<br /><br />    em1.send(<font color="#008000"><b>&quot; Good Morrning. Can we discuss the mediator pattern?</b></font><b><font color="#000080">\&quot;</font><font color="#008000">&quot;</font></b>);<br />    em2.send(<font color="#008000"><b>&quot;No&quot;</b></font>);<br />    m1.send(<font color="#008000"><b>&quot;Hey! dont be rude&quot;</b></font>);<br /><br />}<br /></pre>
    <p>
      
    </p>
    <p>
      Feba gets message: [Jubin here]&#160;&#160;Good Morrning. Can we discuss the mediator pattern?&quot;
    </p>
    <p>
      Nithin gets message: [Jubin here]&#160;&#160;Good Morrning. Can we discuss the mediator pattern?&quot;
    </p>
    <p>
      Moderator gets message: Jubin sends message to risk
    </p>
    <p>
      Jubin gets message: [Feba here] No
    </p>
    <p>
      Nithin gets message: [Feba here] No
    </p>
    <p>
      Moderator gets message: Feba sends message to risk
    </p>
    <p>
      Jubin gets message: [Ben here] Hey! dont be rude
    </p>
    <p>
      Feba gets message: [Ben here] Hey! dont be rude
    </p>
    <p>
      Nithin gets message: [Ben here] Hey! dont be rude
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483340610700" FOLDED="true" ID="ID_1212769536" MODIFIED="1491746580223" TEXT="State Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    In State pattern a class behavior changes based on its state. In State pattern, we create objects which represent various states and a context object whose behavior varies as its state object changes.
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
<node CREATED="1483340750962" ID="ID_616557269" MODIFIED="1483342137485">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="state_pattern.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public class </b></font>TV {<br /><br />    <font color="#000080"><b>private </b></font>RemoteControl <font color="#660e7a"><b>state</b></font>;<br /><br />    <font color="#000080"><b>public </b></font>RemoteControl getState() {<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">state</font></b>;<br />    }<br />    <font color="#000080"><b>public void </b></font>setState(RemoteControl state) {<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>state </b></font>= state;<br />    }<br />    <font color="#000080"><b>public </b></font>TV(RemoteControl state)<b>// set to the initial state</b><br />    {<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>state</b></font>=state;<br />    }<br />    <font color="#000080"><b>public void </b></font>pressButton()<br />    {<br />        <font color="#660e7a"><b>state</b></font>.pressSwitch(<font color="#000080"><b>this</b></font>);<b>//causes the state to be worked on and internally moves  to next state</b><br />    }<br />}</pre>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public abstract class </b></font>RemoteControl<br />{<br />    <font color="#000080"><b>public abstract void </b></font>pressSwitch(TV context);<br />}<br /><br /><font color="#000080"><b>class </b></font>Off <font color="#000080"><b>extends </b></font>RemoteControl<br />{<br /><br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>pressSwitch(TV context){<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;I am Off .Going to be On now&quot;</b></font>);<br />        context.setState(<font color="#000080"><b>new </b></font>On());<b>// moves to next state for this state;</b><br />    }<br />}<br /><br /><font color="#000080"><b>class </b></font>On <font color="#000080"><b>extends </b></font>RemoteControl<br />{<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>pressSwitch(TV context)<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;I am already On .Going to be Off now&quot;</b></font>);<br />        context.setState(<font color="#000080"><b>new </b></font>Off());<br />    }<br />}<br /></pre>
    <p>
      
    </p>
    <p>
      //Main
    </p>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt">System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***State Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br /><font color="#808080"><i>//Initially TV is Off<br /></i></font>Off initialState = <font color="#000080"><b>new </b></font>Off();<br />TV tv = <font color="#000080"><b>new </b></font>TV(initialState);<br /><font color="#808080"><i>//First time press<br /></i></font>tv.pressButton();<b>//the state changes once button is pressed</b><br /><font color="#808080"><i>//Second time press<br /></i></font>tv.pressButton();</pre>
    <p>
      
    </p>
    <p>
      ***State Pattern Demo***
    </p>
    <p>
      
    </p>
    <p>
      I am Off .Going to be On now
    </p>
    <p>
      I am already On .Going to be Off now
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483342226575" FOLDED="true" ID="ID_1679465001" MODIFIED="1491746922107" TEXT="Memento Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <b>Memento pattern is used to restore state of an object to a previous state.</b>

    <p>
      Three objects are playing the game here&#8212;a memento, a caretaker, and the originator.
    </p>
    <p>
      <b>The originato</b>r can have the internal states and it has the ability to restore into its earlier state. An originator can also retrieve information from the memento.
    </p>
    <p>
      <b>The memento</b>&#160;will store the internal states of the originator.
    </p>
    <p>
      <b>The caretaker </b>takes care of the memento&#8217;s safekeeping or protection and it should not examine the contents of the memento.
    </p>
    <p>
      
    </p>
    <p>
      Real-world database programming, often we may need to roll back a transaction operation.
    </p>
    <p>
      
    </p>
    <p>
      This pattern&#160;&#160;can be used to all store events in order and replay the events- In essence its a glorified list.
    </p>
    <p>
      
    </p>
    <p>
      Also, another application would be to do repeat commands on similar functions.
    </p>
    <p>
      
    </p>
    <p>
      https://sourcemaking.com/design_patterns/memento
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-6"/>
<node CREATED="1483342425084" ID="ID_1740023055" MODIFIED="1483343006643">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="momento_pattern.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><br />

<font color="#808080"><i>/**<br /> * Acts like a wrapper to the state<br /> * Is used as he object stored in the caretaker<br /> */<br /></i></font><font color="#000080"><b>public class </b></font>Memento {<br />    <font color="#000080"><b>private </b></font>String <font color="#660e7a"><b>state</b></font>;<br /><br />    <font color="#000080"><b>public </b></font>Memento(String state){<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>state </b></font>= state;<br />    }<br /><br />    <font color="#000080"><b>public </b></font>String getState(){<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">state</font></b>;<br />    }<br /><br /><br />    <font color="#000080"><b>public static void </b></font>main(String[] args) {<br />        Originator originator = <font color="#000080"><b>new </b></font>Originator();<br />        CareTaker careTaker = <font color="#000080"><b>new </b></font>CareTaker();<br /><br />        originator.setState(<font color="#008000"><b>&quot;State #1&quot;</b></font>);<br />        originator.setState(<font color="#008000"><b>&quot;State #2&quot;</b></font>);<br />        careTaker.add(originator.saveStateToMemento());<br /><br />        originator.setState(<font color="#008000"><b>&quot;State #3&quot;</b></font>);<br />        careTaker.add(originator.saveStateToMemento());<br /><br />        originator.setState(<font color="#008000"><b>&quot;State #4&quot;</b></font>);<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Current State: &quot; </b></font>+ originator.getState());<br /><br />        originator.getStateFromMemento(careTaker.get(<font color="#0000ff">0</font>));<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;First saved State: &quot; </b></font>+ originator.getState());<br />        originator.getStateFromMemento(careTaker.get(<font color="#0000ff">1</font>));<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Second saved State: &quot; </b></font>+ originator.getState());<br /><br />    }<br />}<br /><br /><font color="#808080"><i>/**<br /> * records all the states as memntos from the originator<br /> */<br /></i></font><font color="#000080"><b>class </b></font>CareTaker {<br />    <font color="#000080"><b>private </b></font>List&lt;Memento&gt; <font color="#660e7a"><b>mementoList </b></font>= <font color="#000080"><b>new </b></font>ArrayList&lt;Memento&gt;();<br /><br />    <font color="#000080"><b>public void </b></font>add(Memento state){<br />        <font color="#660e7a"><b>mementoList</b></font>.add(state);<br />    }<br /><br />    <font color="#000080"><b>public </b></font>Memento get(<font color="#000080"><b>int </b></font>index){<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">mementoList</font></b>.get(index);<br />    }<br />}<br /><br /><br /><font color="#808080"><i>/**<br /> * class that is set to a state and creates a memento<br /> */<br /></i></font><font color="#000080"><b>class </b></font>Originator {<br />    <font color="#000080"><b>private </b></font>String <font color="#660e7a"><b>state</b></font>;<br /><br />    <font color="#000080"><b>public void </b></font>setState(String state){<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>state </b></font>= state;<br />    }<br /><br />    <font color="#000080"><b>public </b></font>String getState(){<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">state</font></b>;<br />    }<br /><br />    <font color="#000080"><b>public </b></font>Memento saveStateToMemento(){<br />        <font color="#000080"><b>return new </b></font>Memento(<font color="#660e7a"><b>state</b></font>);<br />    }<br /><br />    <font color="#000080"><b>public void </b></font>getStateFromMemento(Memento memento){<br />        <font color="#660e7a"><b>state </b></font>= memento.getState();<br />    }<br />}</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483343856254" FOLDED="true" ID="ID_556267337" MODIFIED="1491747155808" TEXT="Iterator PAttern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

    <p>
      https://sourcemaking.com/design_patterns/iterator
    </p>
    <p>
      
    </p>
    <p>
      Suppose there are two companies: Company A and Company B. Company A stores its employee records (name, etc.) in a linked list and Company B stores its employee data in a big array. One day the two companies decide to work together. The iterator pattern is handy in such a situation. We need not write codes from scratch. We&#8217;ll have a common interface through which we can access data for both companies. We&#8217;ll simply call the same methods without rewriting the codes.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-7"/>
<node CREATED="1483344113382" ID="ID_803287570" MODIFIED="1483344167271">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="iterator.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public interface ISubject
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public IIterator CreateIterator();
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //IIterator.java
    </p>
    <p>
      
    </p>
    <p>
      package iterator;
    </p>
    <p>
      
    </p>
    <p>
      public interface IIterator
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;void First();//Reset to first element
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;String Next();//get next element
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;Boolean IsDone();//End of collection check
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;String CurrentItem();//Retrieve Current Item
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      //Arts.java
    </p>
    <p>
      
    </p>
    <p>
      package aggregate;
    </p>
    <p>
      import iterator.*;
    </p>
    <p>
      
    </p>
    <p>
      public class Arts implements ISubject
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private String[] subjects;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public Arts()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;subjects = new String[2];
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;subjects[0] = &quot;Bengali&quot;;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;subjects[1] = &quot;English&quot; ;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public IIterator CreateIterator()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return new ArtsIterator(subjects);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//Containing the ArtsIterator
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public class ArtsIterator implements IIterator
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private String[] subjects;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private int position;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public ArtsIterator(String[] subjects)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.subjects = subjects;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;position = 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void First()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;position = 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public String Next()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return subjects[position++];
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public Boolean IsDone()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return position &gt;= subjects.length;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public String CurrentItem()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return subjects[position];
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      // Science.java
    </p>
    <p>
      
    </p>
    <p>
      package aggregate;
    </p>
    <p>
      //for Linked List data structure used here
    </p>
    <p>
      
    </p>
    <p>
      import java.util.LinkedList;
    </p>
    <p>
      import iterator.*;
    </p>
    <p>
      
    </p>
    <p>
      public class Science implements ISubject
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private LinkedList&lt;String&gt; subjects;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public Science()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;subjects = new LinkedList&lt;String&gt;();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;subjects.addLast(&quot;Maths&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;subjects.addLast(&quot;Comp. Sc.&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;subjects.addLast(&quot;Physics&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;@Override
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public IIterator CreateIterator()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return new ScienceIterator(subjects);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//Containing the ScienceIterator
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public class ScienceIterator implements IIterator
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private LinkedList&lt;String&gt; subjects;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private int position;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public ScienceIterator(LinkedList&lt;String&gt; subjects)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.subjects = subjects;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;position = 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void First()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;position = 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public String Next()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return subjects.get(position++);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public Boolean IsDone()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return position &gt;= subjects.size();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public String CurrentItem()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return subjects.get(position);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //IteratorPatternEx.java
    </p>
    <p>
      
    </p>
    <p>
      package iteratorpattern.demo;
    </p>
    <p>
      import iterator.*;
    </p>
    <p>
      import aggregate.*;
    </p>
    <p>
      
    </p>
    <p>
      class IteratorPatternEx
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public static void main(String[] args)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;***Iterator Pattern Demo***\n&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ISubject Sc_subject = new Science();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ISubject Ar_subjects = new Arts();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;IIterator Sc_iterator = Sc_subject.CreateIterator();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;IIterator Ar_iterator = Ar_subjects.CreateIterator();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;\nScience subjects :&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Print(Sc_iterator);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;\nArts subjects :&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Print(Ar_iterator);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public static void Print(IIterator iterator)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;while (!iterator.IsDone())
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(iterator.Next());
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483344222159" FOLDED="true" ID="ID_182420337" MODIFIED="1491747372153" TEXT="Command Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;<b>Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undo operations</b>.
    </p>
    <p>
      In general, four terms are associated&#8212;<i>invoker, client, command, and receiver. </i>
    </p>
    <p>
      <b>A command object</b>&#160;is capable of calling a particular method in the receiver. It stores the parameters of the methods in receiver.
    </p>
    <p>
      <b>An invoker</b>&#160;only knows about the command interface, but it is totally unware about the concrete commands.
    </p>
    <p>
      <b>The client </b>object holds the invoker object and the command object(s). The client decides which of these commands needs to execute at a particular point in time.
    </p>
    <p>
      To do that, he/she passes the command object to the invoker to execute that particular command.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-8"/>
<node CREATED="1483344433701" ID="ID_344524493" MODIFIED="1483348154420">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="command.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Command </b>
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt">Encapsulates the receiver which gets called on execute
<font color="#000080"><b>abstract class </b></font>ICommand<br />{<br />&#160;&#160;&#160; <font color="#000080"><b>protected final </b></font>Receiver <font color="#660e7a"><b>receiver</b></font>;<br /><br />&#160;&#160;&#160; <font color="#000080"><b>protected </b></font>ICommand(Receiver receiver) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>receiver </b></font>= receiver;<br />&#160;&#160;&#160;&#160;}<br /><br />&#160;&#160;&#160; <font color="#000080"><b>abstract public void </b></font>execute();<br />}<br /><br /><font color="#000080"><b>class </b></font>MyUndoCommand <font color="#000080"><b>extends </b></font>ICommand {<br /><br />&#160;&#160;&#160; <font color="#000080"><b>protected </b></font>MyUndoCommand(Receiver receiver) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>super</b></font>(receiver);<br />&#160;&#160;&#160;&#160;}<br /><br />&#160;&#160;&#160; <font color="#808000">@Override<br />&#160;&#160;&#160; </font><font color="#000080"><b>public void </b></font>execute() {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a"><b>receiver</b></font>.performUndo();<br />&#160;&#160;&#160;&#160;}<br /><br />}<br /><font color="#000080"><b>class </b></font>MyRedoCommand <font color="#000080"><b>extends </b></font>ICommand {<br /><br />&#160;&#160;&#160; <font color="#000080"><b>protected </b></font>MyRedoCommand(Receiver receiver) {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>super</b></font>(receiver);<br />&#160;&#160;&#160;&#160;}<br /><br />&#160;&#160;&#160; <font color="#808000">@Override<br />&#160;&#160;&#160; </font><font color="#000080"><b>public void </b></font>execute() {<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#660e7a"><b>receiver</b></font>.performRedo();<br />&#160;&#160;&#160;&#160;}<br />}</pre>
    <p>
      
    </p>
    <p>
      <b>Reciever </b>
    </p>
    <p>
      
    </p>
    <p>
      Has the actions called&#160;&#160;by the command objects
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>class </b></font>Receiver<br />{<br />    <font color="#000080"><b>public void </b></font>performUndo()<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Executing -MyUndoCommand&quot;</b></font>);<br />    }<br />    <font color="#000080"><b>public void </b></font>performRedo()<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Executing -MyRedoCommand&quot;</b></font>);<br />    }<br />}<br /></pre>
    <p>
      
    </p>
    <p>
      Invoker
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>Executes the commands

public class </b></font>Invoke<br />{<br />&#160;&#160;&#160;&#160;ICommand <font color="#660e7a"><b>cmd</b></font>;<br /><br />&#160;&#160;&#160; <font color="#000080"><b>public void </b></font>executeCommand(ICommand cmd)<br />&#160;&#160;&#160;&#160;{<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>cmd</b></font>=cmd;<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;cmd.execute();<br />&#160;&#160;&#160;&#160;}<br />}</pre>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public static void </b></font>main(String[] args)<br />{<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Command Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br />    Receiver intendedreceiver=<font color="#000080"><b>new </b></font>Receiver();<br />            <font color="#808080"><i>/*Client holds Invoker and Command Objects*/<br />    </i></font>Invoke inv = <font color="#000080"><b>new </b></font>Invoke();<br />    MyUndoCommand unCmd = <font color="#000080"><b>new </b></font>MyUndoCommand(intendedreceiver);<br />    MyRedoCommand reCmd = <font color="#000080"><b>new </b></font>MyRedoCommand(intendedreceiver);<br />    inv.executeCommand(unCmd);<br />    inv.executeCommand(reCmd);<br /><br /><br />}</pre>
    <p>
      
    </p>
    <p>
      The Reciever object is broken into commands without actually breaking the&#160;&#160;encapsulation&#160;&#160;of the&#160;&#160;object.
    </p>
    <p>
      I could create a list&#160;&#160;of commands&#160;on the same object and pass into queue to have a serial execution of&#160;&#160;&#160;these objects.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483349528548" ID="ID_714309407" MODIFIED="1491751805428" TEXT="StrategyPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from the clients that use it.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-9"/>
</node>
<node CREATED="1483350214486" ID="ID_756800636" MODIFIED="1491751824915" TEXT="TemplatePattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      Define the skeleton of an algorithm in an operation, deferring some steps to client subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1483351720229" FOLDED="true" ID="ID_357600048" MODIFIED="1494523509620" TEXT="ObserverPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.
    </p>
    <p>
      In this pattern, there are many observers (objects) which are observing a particular subject (object). Observers are basically ix`nterested and want to be notified when there is a change made inside that subject. So, they register themselves to that subject. When they lose interest in the subject they simply unregister from the subject. Sometimes this model is also referred to as the Publisher-Subscriber model.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-1"/>
<node CREATED="1483360540660" ID="ID_1921341108" MODIFIED="1483361036130">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="observer.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>interface </b></font>IObserver<br />{<br />    <font color="#000080"><b>void </b></font>update(<font color="#000080"><b>int </b></font>i);<br />}<br /><font color="#000080"><b>class </b></font>Observer1 <font color="#000080"><b>implements </b></font>IObserver<br />{<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>update(<font color="#000080"><b>int </b></font>i)<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Observer1: myValue in Subject is now: &quot;</b></font>+i);<br />    }<br />}<br /><font color="#000080"><b>class </b></font>Observer2 <font color="#000080"><b>implements </b></font>IObserver<br />{<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>update(<font color="#000080"><b>int </b></font>i)<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Observer2: observes -&gt;myValue is changed in Subject to :&quot;</b></font>+i);<br />    }<br />}<br /><br /><font color="#000080"><b>interface </b></font>ISubject<br />{<br />    <font color="#000080"><b>void </b></font>register(IObserver o);<br />    <font color="#000080"><b>void </b></font>unregister(IObserver o);<br />    <font color="#000080"><b>void </b></font>notifyObservers(<font color="#000080"><b>int </b></font>i);<br />}<br /><br /><font color="#000080"><b>class </b></font>Subject <font color="#000080"><b>implements </b></font>ISubject<br />{<br />    <font color="#000080"><b>private int </b></font><b><font color="#660e7a">myValue</font></b>;<br /><br />    <font color="#000080"><b>public int </b></font>getMyValue() {<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">myValue</font></b>;<br />    }<br /><br />    <font color="#000080"><b>public void </b></font>setMyValue(<font color="#000080"><b>int </b></font>myValue) {<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>myValue </b></font>= myValue;<br />        <font color="#808080"><i>//Notify observers<br />        </i></font>notifyObservers(myValue);<br />    }<br /><br />    List&lt;IObserver&gt; <font color="#660e7a"><b>observersList</b></font>=<font color="#000080"><b>new </b></font>ArrayList&lt;IObserver&gt;();<br /><br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>register(IObserver o)<br />    {<br />        <font color="#660e7a"><b>observersList</b></font>.add(o);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>unregister(IObserver o)<br />    {<br />        <font color="#660e7a"><b>observersList</b></font>.remove(o);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>notifyObservers(<font color="#000080"><b>int </b></font>updatedValue)<br />    {<br />        <font color="#000080"><b>for</b></font>(<font color="#000080"><b>int </b></font>i=<font color="#0000ff">0</font>;i&lt;<font color="#660e7a"><b>observersList</b></font>.size();i++)<br />        {<br />            <font color="#660e7a"><b>observersList</b></font>.get(i).update(updatedValue);<br />        }<br />    }<br />}</pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //main
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt">System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;*** Modified Observer Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br />Subject sub = <font color="#000080"><b>new </b></font>Subject();<br />Observer1 ob1 = <font color="#000080"><b>new </b></font>Observer1();<br />Observer2 ob2 = <font color="#000080"><b>new </b></font>Observer2();<br /><br />sub.register(ob1);<br />sub.register(ob2);<br /><br />sub.setMyValue(<font color="#0000ff">5</font>);<br />System.<font color="#660e7a"><b><i>out</i></b></font>.println();<br />sub.setMyValue(<font color="#0000ff">25</font>);<br />System.<font color="#660e7a"><b><i>out</i></b></font>.println();<br /><br /><font color="#808080"><i>//unregister ob1 only<br /></i></font>sub.unregister(ob1);<br /><font color="#808080"><i>//Now only ob2 will observe the change<br /></i></font>sub.setMyValue(<font color="#0000ff">100</font>);<br /></pre>
    <p>
      
    </p>
    <p>
      *** Modified Observer Pattern Demo***
    </p>
    <p>
      
    </p>
    <p>
      Observer1: myValue in Subject is now: 5
    </p>
    <p>
      Observer2: observes -&gt;myValue is changed in Subject to :5
    </p>
    <p>
      
    </p>
    <p>
      Observer1: myValue in Subject is now: 25
    </p>
    <p>
      Observer2: observes -&gt;myValue is changed in Subject to :25
    </p>
    <p>
      
    </p>
    <p>
      Observer2: observes -&gt;myValue is changed in Subject to :100
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1483322502149" ID="ID_842297566" MODIFIED="1494519154552" POSITION="left" TEXT="Structural Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    &#160;Structural Design Patterns are Design Patterns that ease the design by identifying a simple way to realize relationships between entities.
  </body>
</html>
</richcontent>
<node CREATED="1483322580600" FOLDED="true" ID="ID_199426561" MODIFIED="1494520075737" TEXT="Bridge Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    Bridge is used when we need to decouple an abstraction from its implementation so that the two can vary independently. This pattern involves an interface which acts as a bridge which makes the functionality of concrete classes independent from interface implementer classes. Both types of classes can be altered structurally without affecting each other.
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="10"/>
<icon BUILTIN="full-1"/>
<node CREATED="1483324159532" ID="ID_1579012095" MODIFIED="1483324618606">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="bridge_pattern.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Here Shape interface is composed of the color interface.
    </p>
    <p>
      
    </p>
    <p>
      On instantiating a Shape a color is also provided to give and shape with a color.
    </p>
    <p>
      
    </p>
    <p>
      Here we remove the concrete binding between an abstraction and the corresponding implementation. As a result, both hierarchies (abstraction and its implementations) can extend through child classes.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483324763933" FOLDED="true" ID="ID_1695128814" MODIFIED="1491749347838" TEXT="Composite Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    Composite pattern is used where we need to treat a group of objects in similar way as a single object. Composite pattern composes objects in term of a tree structure to represent part as well as whole hierarchy. This type of design pattern comes under structural pattern as this pattern creates a tree structure of group of objects.

    <p>
      <b>This pattern creates a class that contains group of its own objects</b>. This class provides ways to modify its group of same objects.
    </p>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>interface </b></font>ITeacher<br />{<br />    <font color="#000080"><b>public </b></font>String getDetails();<br />}<br /><font color="#000080"><b>class </b></font>Teacher <font color="#000080"><b>implements </b></font>ITeacher<br />{<br />    <font color="#000080"><b>private </b></font>String <font color="#660e7a"><b>teacherName</b></font>;<br />    <font color="#000080"><b>private </b></font>String <font color="#660e7a"><b>deptName</b></font>;<br /> <b>   <font color="#000080">private </font>List&lt;ITeacher&gt; <font color="#660e7a">controls</font>; // composed of subordinate teachers<br /></b><br />    Teacher(String teacherName, String deptName)<br />    {<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>teacherName </b></font>= teacherName;<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>deptName </b></font>= deptName;<br />        <font color="#660e7a"><b>controls </b></font>= <font color="#000080"><b>new </b></font>ArrayList&lt;ITeacher&gt;();<br />    }<br />    <font color="#000080"><b>public void </b></font>Add(Teacher teacher)<br />    {<br />        <font color="#660e7a"><b>controls</b></font>.add(teacher);<br />    }<br />    <font color="#000080"><b>public void </b></font>Remove(Teacher teacher)<br />    {<br />        <font color="#660e7a"><b>controls</b></font>.remove(teacher);<br />    }<br />    <font color="#000080"><b>public </b></font>List&lt;ITeacher&gt; getControllingDepts()<br />    {<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">controls</font></b>;<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public </b></font>String getDetails() {<br />        <font color="#000080"><b>return </b></font>(<font color="#660e7a"><b>teacherName </b></font>+ <font color="#008000"><b>&quot; is the  &quot; </b></font>+ <font color="#660e7a"><b>deptName</b></font>);<br />    }<br /><br />}</pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
<node CREATED="1483325049662" ID="ID_1071014481" MODIFIED="1483325075606">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="composite_pattern.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483337935919" FOLDED="true" ID="ID_627034729" MODIFIED="1494519622266" TEXT="Fly-weight Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A flyweight is an object through which we try to minimize memory usage by sharing data as much as possible. Two common terms are used here&#8212;intrinsic state and extrinsic state. The first category (<b>intrinsic) can be stored in the flyweight and is shareable</b>. The other <b>(extrinsic) one depends on the flyweight&#8217;s context and is non-shareable</b>. Client objects need to pass the extrinsic state to the flyweight.
    </p>
    Flyweight pattern tries to reuse already existing similar kind objects by storing them and creates new object when no matching object is found.

    <p>
      
    </p>
    <p>
      <b>Computer World Example </b>
    </p>
    <p>
      The graphical representation of characters in word processors is a common example of this pattern. Also, we can think of a computer game where we have a large number of participants whose looks are same but who differ from each other in their performances (or color, dresses, weapons, etc.). We can use the flyweight pattern in all those scenarios.
    </p>
    <p>
      
    </p>
    Flyweight is when you have many different kinds of a single thing. Singleton is when you have a single thing. For example, you might use the Flyweight Pattern to represent keyboard characters. One object for code&quot;a&quot;, one for &quot;b&quot;, etc. They are both characters, but different kinds of characters.
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
<node CREATED="1483338762345" ID="ID_502772901" MODIFIED="1483339324760">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="flyweight_pattern.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Note that, we&#8217;ll not create any new object (here, small or large robots) if we have created such a type already. If we have at least one instance of our desired object, we&#8217;ll reuse that object from this point onward.
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#808080"><i><br />




</i></font><font color="#000080"><b>interface </b></font>IRobot {<br />    <font color="#000080"><b>void </b></font>Print();<br />}<br /><br /><font color="#000080"><b>class </b></font>SmallRobot <font color="#000080"><b>implements </b></font>IRobot {<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>Print() {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot; This is a Small Robot&quot;</b></font>);<br />    }<br />}<br /><br /><font color="#000080"><b>class </b></font>LargeRobot <font color="#000080"><b>implements </b></font>IRobot {<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>Print() {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot; I am a Large Robot&quot;</b></font>);<br />    }<br />}<br /><br /><font color="#000080"><b>public class </b></font><b>RobotFactory</b> {<br /><br />    <font color="#000080"><b>private </b></font>Map&lt;String, IRobot&gt; <font color="#660e7a"><b>shapes </b></font>= <font color="#000080"><b>new </b></font>HashMap&lt;String, IRobot&gt;(); //<b>to store an instance of the robot to pass the same object</b><br /><br />    <font color="#000080"><b>public int </b></font>TotalObjectsCreated() {<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">shapes</font></b>.size();<br />    }<br /><br />    <font color="#000080"><b>public </b></font>IRobot GetRobotFromFactory(String RobotCategory) <font color="#000080"><b>throws </b></font>Exception {<br />        IRobot robotCategory = <font color="#000080"><b>null</b></font>;<br />        <font color="#000080"><b>if </b></font>(<font color="#660e7a"><b>shapes</b></font>.containsKey(RobotCategory)) {<br />            robotCategory = <font color="#660e7a"><b>shapes</b></font>.get(RobotCategory);<br />        } <font color="#000080"><b>else </b></font>{<br />            <font color="#000080"><b>switch </b></font>(RobotCategory) {<br />                <font color="#000080"><b>case </b></font><b><font color="#008000">&quot;small&quot;</font></b>:<br />                    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;We do not have Small Robot. So we are creating a Small Robot now.&quot;</b></font>);<br />                    robotCategory = <font color="#000080"><b>new </b></font>SmallRobot();<br />                    <font color="#660e7a"><b>shapes</b></font>.put(<font color="#008000"><b>&quot;small&quot;</b></font>, robotCategory);<br />                    <font color="#000080"><b>break</b></font>;<br />                <font color="#000080"><b>case </b></font><b><font color="#008000">&quot;large&quot;</font></b>:<br />                    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;We do not have Large Robot. So we are creating a Large Robot now .&quot;</b></font>);<br />                    robotCategory = <font color="#000080"><b>new </b></font>LargeRobot();<br />                    <font color="#660e7a"><b>shapes</b></font>.put(<font color="#008000"><b>&quot;large&quot;</b></font>, robotCategory);<br />                    <font color="#000080"><b>break</b></font>;<br />                <font color="#000080"><b>default</b></font>:<br />                    <font color="#000080"><b>throw new </b></font>Exception(<font color="#008000"><b>&quot; Robot Factory can create only small and large shapes&quot;</b></font>);<br />            }<br />        }<br />        <font color="#000080"><b>return </b></font>robotCategory;<br />    }<br /><br />}<br /></pre>
    <p>
      
    </p>
    <p>
      //Main
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public static void </b></font>main(String[] args) <font color="#000080"><b>throws </b></font>Exception {<br /><br />    RobotFactory myfactory = <font color="#000080"><b>new </b></font>RobotFactory();<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;</b></font><b><font color="#000080">\n</font><font color="#008000">***Flyweight Pattern Example***</font><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br /><br />    IRobot shape = myfactory.GetRobotFromFactory(<font color="#008000"><b>&quot;small&quot;</b></font>);<br />    shape.Print();<br />            <font color="#808080"><i>/*Here we are trying to get the objects additional 2 times. Note that from now onward we do not need to create additional small robots as we have already created this category*/<br />    </i></font><font color="#000080"><b>for </b></font>(<font color="#000080"><b>int </b></font>i = <font color="#0000ff">0</font>; i &lt; <font color="#0000ff">2</font>; i++) {<br />        shape = myfactory.GetRobotFromFactory(<font color="#008000"><b>&quot;small&quot;</b></font>);<br />        shape.Print();<br />    }<br />    <font color="#000080"><b>int </b></font>NumOfDistinctRobots = myfactory.TotalObjectsCreated();<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;</b></font><b><font color="#000080">\n</font><font color="#008000">Distinct Robot objects created till now= &quot; </font></b>+ NumOfDistinctRobots);<br /><br />            <font color="#808080"><i>/*Here we are trying to get the objects 5 times. Note that the second time onward we do not need to create additional large robots as we have already created this category in the first attempt(at i=0)*/<br />    </i></font><font color="#000080"><b>for </b></font>(<font color="#000080"><b>int </b></font>i = <font color="#0000ff">0</font>; i &lt; <font color="#0000ff">5</font>; i++) {<br />        shape = myfactory.GetRobotFromFactory(<font color="#008000"><b>&quot;large&quot;</b></font>);<br />        shape.Print();<br />    }<br /><br />    NumOfDistinctRobots = myfactory.TotalObjectsCreated();<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;</b></font><b><font color="#000080">\n</font><font color="#008000"> Finally no of Distinct Robot objects created: &quot; </font></b>+ NumOfDistinctRobots);<br />}</pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ***Flyweight Pattern Example***
    </p>
    <p>
      
    </p>
    <p>
      We do not have Small Robot. So we are creating a Small Robot now.
    </p>
    <p>
      &#160;This is a Small Robot
    </p>
    <p>
      &#160;This is a Small Robot
    </p>
    <p>
      &#160;This is a Small Robot
    </p>
    <p>
      
    </p>
    <p>
      Distinct Robot objects created till now= 1
    </p>
    <p>
      We do not have Large Robot. So we are creating a Large Robot now .
    </p>
    <p>
      &#160;I am a Large Robot
    </p>
    <p>
      &#160;I am a Large Robot
    </p>
    <p>
      &#160;I am a Large Robot
    </p>
    <p>
      &#160;I am a Large Robot
    </p>
    <p>
      &#160;I am a Large Robot
    </p>
    <p>
      
    </p>
    <p>
      &#160;Finally no of Distinct Robot objects created: 2
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483343556217" FOLDED="true" ID="ID_516526506" MODIFIED="1491750180410" TEXT="Facade Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Provide a unified interface to a set of interfaces in a system. Facade defines a higher-level interface that makes the subsystem easier to use.
    </p>
    <p>
      It is one of those patterns that supports loose coupling. Here we emphasize the abstraction and hide the complex details by exposing a simple interface.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
<node CREATED="1483343730056" ID="ID_1175179041" MODIFIED="1483343803563">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="facade.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public class <b>RobotBody</b>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void CreateBody()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;Body Creation done&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //RobotColor.java
    </p>
    <p>
      package robotparts;
    </p>
    <p>
      
    </p>
    <p>
      public class <b>RobotColor</b>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private String color;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void SetColor(String color)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.color = color;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;Color is set to : &quot;+ this.color);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //RobotMetal.java
    </p>
    <p>
      package robotparts;
    </p>
    <p>
      
    </p>
    <p>
      public class <b>RobotMetal</b>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private String metal;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void SetMetal(String metal)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.metal=metal;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;Metal is set to : &quot;+this.metal);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //RobotFacade.java
    </p>
    <p>
      package robotfacade;
    </p>
    <p>
      import robotparts.*;
    </p>
    <p>
      
    </p>
    <p>
      public class <b>RobotFacade</b>
    </p>
    <p>
      {
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;RobotColor rc; </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;RobotMetal rm ; </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;RobotBody rb;</b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public RobotFacade()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rc = new RobotColor();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rm = new RobotMetal();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rb = new RobotBody();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void ConstructRobot(String color,String metal)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;\nCreation of the Robot Start&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rc.SetColor(color);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rm.SetMetal(metal);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rb.CreateBody();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot; \nRobot Creation End&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      //FacadePatternEx.java
    </p>
    <p>
      package facade.pattern.demo;
    </p>
    <p>
      import robotfacade.RobotFacade;
    </p>
    <p>
      
    </p>
    <p>
      class FacadePatternEx
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public static void main(String[] args)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;***Facade Pattern Demo***&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;RobotFacade rf1 = new RobotFacade();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rf1.ConstructRobot(&quot;Green&quot;, &quot;Iron&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;RobotFacade rf2 = new RobotFacade();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rf2.ConstructRobot(&quot;Blue&quot;, &quot;Steel&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483348166905" FOLDED="true" ID="ID_474266116" MODIFIED="1491750830974" TEXT="AdapterPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Convert the interface of a class into another interface that clients expect. The adapter pattern lets classes work together that couldn&#8217;t otherwise because of incompatible interfaces.
    </p>
    <p>
      
    </p>
    <p>
      GoF tells us about two major kinds of adapters:
    </p>
    <p>
      <b>Class adapters</b>. They generally use multiple inheritance to adapt one interface to another. (But we must remember, in Java, multiple inheritance through classes is not supported. We need interfaces to implement the concept of multiple inheritance.)
    </p>
    <p>
      <b>Object adapters</b>. They depend on the object compositions.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
<node CREATED="1483349200174" FOLDED="true" ID="ID_631734168" MODIFIED="1491750518694" TEXT="ObjectAdapters">
<node CREATED="1483348252789" ID="ID_240829513" MODIFIED="1483349407728">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="adapter.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>class </b></font>Rect<br />{<br />    <font color="#000080"><b>public double </b></font><b><font color="#660e7a">l</font></b>;<br />    <font color="#000080"><b>public double </b></font><b><font color="#660e7a">w</font></b>;<br />}<br /><font color="#000080"><b>class </b></font>Triangle<br />{<br />    <font color="#000080"><b>public double </b></font><b><font color="#660e7a">b</font></b>;<font color="#808080"><i>//base<br />    </i></font><font color="#000080"><b>public double </b></font><b><font color="#660e7a">h</font></b>;<font color="#808080"><i>//height<br />    </i></font><font color="#000080"><b>public </b></font>Triangle(<font color="#000080"><b>int </b></font>b, <font color="#000080"><b>int </b></font>h)<br />    {<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>b </b></font>= b;<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>h </b></font>= h;<br />    }<br />    <font color="#000080"><b>static class </b></font><b>RectCalculatorAdapter</b>{<br />        <b>RectCalculator</b> <font color="#660e7a"><b>calculator</b></font>;<br />        Triangle <font color="#660e7a"><b>triangle</b></font>;<br /><br />        <font color="#000080"><b>public double </b></font>getArea(Triangle t)<br />        {<br />            <font color="#660e7a"><b>calculator </b></font>= <font color="#000080"><b>new </b></font>RectCalculator();<br />            <font color="#660e7a"><b>triangle</b></font>=t;<br />            Rect r = <font color="#000080"><b>new </b></font>Rect();<b><br />            <font color="#808080"><i>//Area of Triangle=0.5*base*height</i></font></b><font color="#808080"><i><br />            </i></font>r.<font color="#660e7a"><b>l </b></font>= <font color="#660e7a"><b>triangle</b></font>.<font color="#660e7a"><b>b</b></font>;<br />            r.<font color="#660e7a"><b>w </b></font>= <font color="#0000ff">0.5</font>*<font color="#660e7a"><b>triangle</b></font>.<font color="#660e7a"><b>h</b></font>;<br />            <font color="#000080"><b>return </b></font><b><font color="#660e7a">calculator</font></b>.getArea(r);<br />        }<br />    }<br /><br />}</pre>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public class </b></font>RectCalculator {<br />    Rect <font color="#660e7a"><b>rectangle</b></font>;<br />    <font color="#000080"><b>public double </b></font>getArea(Rect r)<br />    {<br />        <font color="#660e7a"><b>rectangle</b></font>=r;<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">rectangle</font></b>.<font color="#660e7a"><b>l </b></font>* <font color="#660e7a"><b>rectangle</b></font>.<font color="#660e7a"><b>w</b></font>;<br />    }<br /><br />}<br /><br /></pre>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public static void </b></font>main(String[] args) {<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Adapter Pattern Demo***&quot;</b></font>);<br /><b>    Triangle.RectCalculatorAdapter cal=<font color="#000080">new </font>Triangle.RectCalculatorAdapter();<br /></b>    Triangle t = <font color="#000080"><b>new </b></font>Triangle(<font color="#0000ff">20</font>,<font color="#0000ff">10</font>);<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;</b></font><b><font color="#000080">\n</font><font color="#008000">Adapter Pattern Example</font><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br /><b>    System.<font color="#660e7a"><i>out</i></font>.println(<font color="#008000">&quot;Area of Triangle is :&quot; </font>+ cal.getArea(t));<br /></b>}</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483349235830" ID="ID_1169085191" MODIFIED="1483349376846" TEXT="ClassAdapters">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      interface IIntegerValue
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public int getInteger();
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      class IntegerValue implements IIntegerValue
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;@Override
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public int getInteger()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 5;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      class ClassAdapter <b>extends IntegerValue</b>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//Incrementing by 2
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public int getInteger()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 2+<b>super.getInteger();</b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483349464787" FOLDED="true" ID="ID_1010930101" MODIFIED="1494519374215" TEXT="DecoratorPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.
    </p>
    <p>
      This main principle of this pattern says that<b>&#160;we cannot modify existing functionalities but we can extend them.</b>&#160;In other words, this pattern is<b>&#160;open for extension but closed for modification</b>. The core concept applies when we want to add some specific functionalities to some specific object instead of to the whole class.
    </p>
    <p>
      
    </p>
    <p>
      How is this pattern different from inheritance?
    </p>
    <p>
      We can add or remove responsibilities by simply attaching or detaching decorators. But with the simple inheritance technique, we need to create a new class for new responsibilities. So, there will be many classes inside the system, which in turn can make the system complex.
    </p>
    <p>
      
    </p>
    <p>
      What is the major disadvantage of using this pattern?
    </p>
    <p>
      First of all, if we are careful enough, there is no significant disadvantage. But if we create too many decorators in the system, the system will be hard to maintain and debug. At the same time, the decorators can create unnecessary confusion.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-6"/>
<node CREATED="1483349764311" ID="ID_1208460319" MODIFIED="1483350111424">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="decorator.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public class </b></font>DecoratorDemo {<br /><br />    <font color="#000080"><b>public static void </b></font>main(String[] args) {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Decorator pattern Demo***&quot;</b></font>);<br />        ConcreteComponent cc = <font color="#000080"><b>new </b></font>ConcreteComponent();<br /><br />        ConcreteDecoratorEx_1 cd_1 = <font color="#000080"><b>new </b></font>ConcreteDecoratorEx_1();<br />        <font color="#808080"><i>// Decorating ConcreteComponent Object //cc with ConcreteDecoratorEx_1<br />        </i></font>cd_1.SetTheComponent(cc);<br />        cd_1.doJob();<br /><br />        ConcreteDecoratorEx_2 cd_2= <font color="#000080"><b>new </b></font>ConcreteDecoratorEx_2();<br />        <font color="#808080"><i>// Decorating ConcreteComponent Object //cc with ConcreteDecoratorEx_1 &amp; //ConcreteDecoratorEX_2<br />        </i></font>cd_2.SetTheComponent(cd_1);<font color="#808080"><i>//Adding //results from cd_1 now<br />        </i></font>cd_2.doJob();<br />    }<br /><br />}<br /><br /><font color="#000080"><b>abstract class </b></font>Component<br />{<br />    <font color="#000080"><b>public abstract void </b></font>doJob();<br /><br />}<br /><font color="#000080"><b>class </b></font>ConcreteComponent <font color="#000080"><b>extends </b></font>Component<br />{<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>doJob()<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot; I am from Concrete Component-I am closed for modification.&quot;</b></font>);<br /><br />    }<br />}<br /><br /><font color="#000080"><b>abstract class </b></font>AbstractDecorator <font color="#000080"><b>extends </b></font>Component<br />{<br />    <font color="#000080"><b>protected </b></font>Component <font color="#660e7a"><b>com </b></font>;<br />    <font color="#000080"><b>public void </b></font>SetTheComponent(Component c)<br />    {<br />        <font color="#660e7a"><b>com </b></font>= c;<br />    }<br />    <font color="#000080"><b>public void </b></font>doJob()<br />    {<br />        <font color="#000080"><b>if </b></font>(<font color="#660e7a"><b>com </b></font>!= <font color="#000080"><b>null</b></font>)<br />        {<br />            <font color="#660e7a"><b>com</b></font>.doJob();<br />        }<br />    }<br /><br />}<br /><font color="#000080"><b>class </b></font>ConcreteDecoratorEx_1 <font color="#000080"><b>extends </b></font>AbstractDecorator<br />{<br />    <font color="#000080"><b>public void </b></font>doJob()<br />    {<br />        <font color="#000080"><b>super</b></font>.doJob();<br />        <font color="#808080"><i>//Add additional thing if necessary<br />        </i></font>System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;I am explicitly from Ex_1&quot;</b></font>);<br />    }<br />}<br /><font color="#000080"><b>class </b></font>ConcreteDecoratorEx_2 <font color="#000080"><b>extends </b></font>AbstractDecorator<br />{<br />    <font color="#000080"><b>public  void </b></font>doJob()<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;&quot;</b></font>);<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***START Ex-2***&quot;</b></font>);<br />        <font color="#000080"><b>super</b></font>.doJob();<br />        <font color="#808080"><i>//Add additional thing if necessary<br />        </i></font>System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Explicitly From DecoratorEx_2&quot;</b></font>);<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***END. EX-2***&quot;</b></font>);<br />    }<br />}<br /></pre>
    <p>
      
    </p>
    <p>
      ***Decorator pattern Demo***
    </p>
    <p>
      &#160;I am from Concrete Component-I am closed for modification.
    </p>
    <p>
      I am explicitly from Ex_1
    </p>
    <p>
      
    </p>
    <p>
      ***START Ex-2***
    </p>
    <p>
      &#160;I am from Concrete Component-I am closed for modification.
    </p>
    <p>
      I am explicitly from Ex_1
    </p>
    <p>
      Explicitly From DecoratorEx_2
    </p>
    <p>
      ***END. EX-2***
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483350245396" FOLDED="true" ID="ID_723895991" MODIFIED="1494520184443" TEXT="Proxy Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4">Provide a surrogate or placeholder for another object to control access to it. </font>
    </p>
    <p>
      <font size="4">We must remember that in the real programming world, the creation of multiple instances of a complex object (heavy object) is very costly. In such situations, we can create multiple proxy objects (which must point to an original object) and the total creation of actual objects can be carried out on a demand basis. Thus we can save both the memory and creational time. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">Adapter provides a different interface to its subject. </font>
    </p>
    <p>
      <font size="4">Proxy provides the same interface. </font>
    </p>
    <p>
      <font size="4">Decorator provides an enhanced interface. </font>
    </p>
    <p>
      
    </p>
    <p>
      <b><font size="4">Decorator and Proxy have different purposes but similar structures. </font></b><font size="4">Both describe how to provide a level of indirection to another object, and the implementations keep a reference to the object to which they forward requests. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">Mainly we are familiar with the following types: </font>
    </p>
    <p>
      <b><font size="4">Remote proxies</font></b><font size="4">. They will hide that actual object which is in a different address space. </font>
    </p>
    <p>
      <b><font size="4">Virtual proxies</font></b><font size="4">. They are used to perform optimization techniques like the creation of a heavy object on a demand basis. </font>
    </p>
    <p>
      <b><font size="4">Protection proxies</font></b><font size="4">. They generally deal with different access rights. </font>
    </p>
    <p>
      <b><font size="4">Smart reference</font></b><font size="4">. It can also perform some additional housekeeping work when an object is accessed. A typical operation is counting the number of references to the actual object.</font>
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-7"/>
<node CREATED="1483350398893" ID="ID_72922813" MODIFIED="1483350965482">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="proxy.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><br />

<font color="#000080"><b>abstract class </b></font>Subject<br />{<br />    <font color="#000080"><b>public abstract void </b></font>doSomeWork();<br />}<br /><br /><font color="#000080"><b>class </b></font>ConcreteSubject <font color="#000080"><b>extends </b></font>Subject<br />{<br /><br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>doSomeWork()<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot; I am from concrete subject&quot;</b></font>);<br />    }<br />}<br /><br /><font color="#000080"><b>class </b></font>Proxy <font color="#000080"><b>extends </b></font>Subject<br />{<br />    ConcreteSubject <font color="#660e7a"><b>cs</b></font>;<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>doSomeWork()<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Proxy call happening now&quot;</b></font>);<br />        <font color="#808080"><i>//Lazy initialization<br />        </i></font><font color="#000080"><b>if </b></font>(<font color="#660e7a"><b>cs </b></font>== <font color="#000080"><b>null</b></font>)<br />        {<br />            <font color="#660e7a"><b>cs </b></font>= <font color="#000080"><b>new </b></font>ConcreteSubject();<br />        }<br />        <font color="#660e7a"><b>cs</b></font>.doSomeWork();<br />    }<br />}<br /><br /><font color="#000080"><b>public class </b></font>ProxyPatternEx<br />{<br />    <font color="#000080"><b>public static void </b></font>main(String[] args)<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Proxy Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br />        Proxy px = <font color="#000080"><b>new </b></font>Proxy();<br />        px.doSomeWork();<br />    }<br />}</pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1483327446689" ID="ID_1086785180" MODIFIED="1494523510856" POSITION="right" TEXT="Creational Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    Creational design patterns are design patterns that deal with object creation mechanisms, trying to create objects in a manner suitable to the situation
  </body>
</html>
</richcontent>
<node CREATED="1483327487434" FOLDED="true" ID="ID_296026027" MODIFIED="1494520576248" TEXT="PrototypePattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">The prototype pattern provides an alternative method for instantiating new objects by copying or cloning an instance of an existing one. Creating a new instance, in a real-world scenario, is normally treated as an expensive operation. This pattern helps us to deal with this issue. Our focus here is to reduce the expense of this creational process of a new instance. </font>
    </p>
    <ol>
      <li>
        <font size="3">When the system does not care about the creational mechanism of the products, this pattern is very helpful. </font>
      </li>
      <li>
        <font size="3">We can use this pattern when we need to instantiate classes at runtime. </font>
      </li>
      <li>
        <font size="3">In our example, we have used the default clone() method in Java, which is a shallow copy. Thus, it is inexpensive compared to a deep copy. </font>
      </li>
    </ol>
    <p>
      <font size="3">What are the advantages of the prototype pattern? </font>
    </p>
    <ol>
      <li>
        <font size="3">We can include or discard products at runtime </font>
      </li>
      <li>
        <font size="3">.We can create new instances with a cheaper cost. </font>
      </li>
    </ol>
    <p>
      <font size="3">What are the disadvantages of the prototype pattern? </font>
    </p>
    <ol>
      <li>
        <font size="3">Each subclass has to implement the cloning mechanism. </font>
      </li>
      <li>
        <font size="3">Implementing the cloning mechanism can be challenging if the objects under consideration do not support copying or if there is any kind of circular reference. </font>
      </li>
    </ol>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-1"/>
<node CREATED="1483328099097" ID="ID_920785852" MODIFIED="1483336839040">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="prototype_pattern.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080"><b>public abstract class </b></font>BasicCar <font color="#000080"><b>implements </b></font>Cloneable{<br />    <font color="#000080"><b>public </b></font>String <font color="#660e7a"><b>modelname</b></font>;<br />    <font color="#000080"><b>public int </b></font><b><font color="#660e7a">price</font></b>;<br /><br />    <font color="#000080"><b>public </b></font>String getModelname()<br />    {<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">modelname</font></b>;<br />    }<br />    <font color="#000080"><b>public void </b></font>setModelname(String modelname)<br />    {<br />        <font color="#000080"><b>this</b></font>.<font color="#660e7a"><b>modelname </b></font>= modelname;<br />    }<br /><br />    <font color="#000080"><b>public static int </b></font>setPrice()<br />    {<br />        <font color="#000080"><b>int </b></font>price = <font color="#0000ff">0</font>;<br />        Random r = <font color="#000080"><b>new </b></font>Random();<br />        <font color="#000080"><b>int </b></font>p = r.nextInt(<font color="#0000ff">100000</font>);<br />        price = p;<br />        <font color="#000080"><b>return </b></font>price;<br />    }<br /><br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>protected </b></font>BasicCar clone() <font color="#000080"><b>throws </b></font>CloneNotSupportedException {<br />        <font color="#000080"><b>return </b></font>(BasicCar) <font color="#000080"><b>super</b></font>.clone();<br />    }<br />}<br />

<font color="#000080"><b>class </b></font>Nano <font color="#000080"><b>extends </b></font>BasicCar<br />{<br />    <font color="#000080"><b>public </b></font>Nano(String m)<br />    {<br />        <font color="#660e7a"><b>modelname </b></font>= m;<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public </b></font>BasicCar clone() <font color="#000080"><b>throws </b></font>CloneNotSupportedException<br />    {<br />        <font color="#000080"><b>return </b></font>(Nano)<font color="#000080"><b>super</b></font>.clone();<br /><br />    }<br />}<br /><font color="#000080"><b>class </b></font>Ford <font color="#000080"><b>extends </b></font>BasicCar<br />{<br /><br />    <font color="#000080"><b>public </b></font>Ford(String m)<br />    {<br />        <font color="#660e7a"><b>modelname </b></font>= m;<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public </b></font>BasicCar clone() <font color="#000080"><b>throws </b></font>CloneNotSupportedException<br />    {<br />        <font color="#000080"><b>return </b></font>(Ford)<font color="#000080"><b>super</b></font>.clone();<br />    }<br /><br />}<br /></pre>
    <p>
      //---------------
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt">    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Prototype Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br />    BasicCar nano_base = <font color="#000080"><b>new </b></font>Nano(<font color="#008000"><b>&quot;Green Nano&quot;</b></font>);<br />    nano_base.<font color="#660e7a"><b>price</b></font>=<font color="#0000ff">100000</font>;<br /><br />    BasicCar ford_basic = <font color="#000080"><b>new </b></font>Ford(<font color="#008000"><b>&quot;Ford Yellow&quot;</b></font>);<br />    ford_basic.<font color="#660e7a"><b>price</b></font>=<font color="#0000ff">500000</font>;<br /><br />    BasicCar bc1;<br />    <font color="#808080"><i>//Clone Nano Object<br />    </i></font>bc1 =nano_base.clone();<br />    <font color="#808080"><i>//Price will be more than 100000 for sure<br />    </i></font>bc1.<font color="#660e7a"><b>price </b></font>= nano_base.<font color="#660e7a"><b>price</b></font>+BasicCar.<i>setPrice</i>();<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Car is: &quot;</b></font>+ bc1.<font color="#660e7a"><b>modelname</b></font>+<font color="#008000"><b>&quot; and it&#8217;s price is Rs.&quot;</b></font>+bc1.<font color="#660e7a"><b>price</b></font>);<br /><br />    <font color="#808080"><i>//Clone Ford Object<br />    </i></font>bc1 =ford_basic.clone();<br />    <font color="#808080"><i>//Price will be more than 500000 for sure<br />    </i></font>bc1.<font color="#660e7a"><b>price </b></font>= ford_basic.<font color="#660e7a"><b>price</b></font>+BasicCar.<i>setPrice</i>();<br />    System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;Car is: &quot;</b></font>+ bc1.<font color="#660e7a"><b>modelname</b></font>+<font color="#008000"><b>&quot; and it&#8217;s price is Rs.&quot;</b></font>+bc1.<font color="#660e7a"><b>price</b></font>);<br /></pre>
    <p>
      //-----------------
    </p>
    <p>
      ***Prototype Pattern Demo***
    </p>
    <p>
      
    </p>
    <p>
      Car is: Green Nano and it&#8217;s price is Rs.136213
    </p>
    <p>
      Car is: Ford Yellow and it&#8217;s price is Rs.538501
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483337031949" FOLDED="true" ID="ID_1489290410" MODIFIED="1494520938971" TEXT="AbstractFactoryPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4">Provides an interface for creating families of related or dependent objects without specifying their concrete classes. </font>
    </p>
    <p>
      <font size="4">&#160;In this process, an interface is used to create related objects. Here we do not call their implementer or concrete classes directly. We sometimes refer to this pattern as a factory of factories or a Super factory. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">This pattern separates concrete classes and makes interchanging the products easier. It can also enhance the reliabilities among products. But, at the same time, we must acknowledge the fact that creating a new product is difficult with this pattern </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">We use this pattern when our system does not care about how its products will be created or composed. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">We use this pattern when we need to deal with multiple factories.</font>
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-2"/>
<node CREATED="1483337435655" ID="ID_299053677" MODIFIED="1483337448746">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="Abstract_factory_pattern.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483340033002" FOLDED="true" ID="ID_448967301" MODIFIED="1494521068963" TEXT="Builder Pattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4">The pattern is useful when a creational algorithm of a complex object is independent of the assembly of the parts of the object. The construction process is also capable of building a different representation of that object under consideration. </font>
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        <font size="4">Here we separate the code of assembling from its representation. So, it hides the complex construction process and represents it as a simple process. </font>
      </li>
      <li>
        <font size="4">Here we focus on &#8220;how the product will be made.&#8221; </font>
      </li>
      <li>
        <font size="4">In general, we have only one method which will finally return the complete object. Other methods will be responsible for partial creation process only. </font>
      </li>
      <li>
        <b><font size="4">It requires some amount of code duplication&#8212;which is considered a drawback with this pattern. </font></b>

        <ol>
          <li>
            <b><font size="4">Also, if we want a mutable object (an object which can be modified after the creational process is over), we should not use this pattern.</font></b>
          </li>
        </ol>
      </li>
    </ol>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-3"/>
<node CREATED="1483340173487" ID="ID_279909901" MODIFIED="1483340499472">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="builder_patterb.jpg" />
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><br />


<font color="#000080"><b>interface </b></font>IBuilder<br />{<br />    <font color="#000080"><b>void </b></font>BuildBody();<br />    <font color="#000080"><b>void </b></font>InsertWheels();<br />    <font color="#000080"><b>void </b></font>AddHeadlights();<br />    Product GetVehicle();<br /><br />}<br /><br /><font color="#808080"><i>// Car is ConcreteBuilder<br /></i></font><font color="#000080"><b>class </b></font>Car <font color="#000080"><b>implements </b></font>IBuilder<br />{<br />    <font color="#000080"><b>private </b></font>Product <font color="#660e7a"><b>product </b></font>= <font color="#000080"><b>new </b></font>Product();<br /><br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>BuildBody()<br />    {<br />        <font color="#660e7a"><b>product</b></font>.Add(<font color="#008000"><b>&quot;This is a body of a Car&quot;</b></font>);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>InsertWheels()<br />    {<br />        <font color="#660e7a"><b>product</b></font>.Add(<font color="#008000"><b>&quot;4 wheels are added&quot;</b></font>);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>AddHeadlights()<br />    {<br />        <font color="#660e7a"><b>product</b></font>.Add(<font color="#008000"><b>&quot;2 Headlights are added&quot;</b></font>);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public  </b></font>Product GetVehicle()<br />    {<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">product</font></b>;<br />    }<br /><br />}<br /><br /><font color="#808080"><i>// Motorcycle is a ConcreteBuilder<br /></i></font><font color="#000080"><b>class </b></font>MotorCycle <font color="#000080"><b>implements </b></font>IBuilder<br />{<br />    <font color="#000080"><b>private </b></font>Product <font color="#660e7a"><b>product </b></font>= <font color="#000080"><b>new </b></font>Product();<br /><br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public  void </b></font>BuildBody()<br />    {<br />        <font color="#660e7a"><b>product</b></font>.Add(<font color="#008000"><b>&quot;This is a body of a Motorcycle&quot;</b></font>);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>InsertWheels()<br />    {<br />        <font color="#660e7a"><b>product</b></font>.Add(<font color="#008000"><b>&quot;2 wheels are added&quot;</b></font>);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public void </b></font>AddHeadlights()<br />    {<br />        <font color="#660e7a"><b>product</b></font>.Add(<font color="#008000"><b>&quot;1 Headlights are added&quot;</b></font>);<br />    }<br />    <font color="#808000">@Override<br />    </font><font color="#000080"><b>public  </b></font>Product GetVehicle()<br />    {<br />        <font color="#000080"><b>return </b></font><b><font color="#660e7a">product</font></b>;<br />    }<br />}<br /><br /><font color="#808080"><i>// &quot;Product&quot;<br /></i></font><font color="#000080"><b>class </b></font>Product<br />{<br />    <font color="#808080"><i>// We can use any data structure that you prefer. We have used LinkedList here.<br />    </i></font><font color="#000080"><b>private </b></font>LinkedList&lt;String&gt; <font color="#660e7a"><b>parts</b></font>;<br />    <font color="#000080"><b>public </b></font>Product()<br />    {<br />        <font color="#660e7a"><b>parts </b></font>= <font color="#000080"><b>new </b></font>LinkedList&lt;String&gt;();<br />    }<br /><br />    <font color="#000080"><b>public void </b></font>Add(String part)<br />    {<br />        <font color="#808080"><i>//Adding parts<br />        </i></font><font color="#660e7a"><b>parts</b></font>.addLast(part);<br />    }<br /><br />    <font color="#000080"><b>public void </b></font>Show()<br />    {<br />        System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;</b></font><b><font color="#000080">\n</font><font color="#008000"> Product completed as below :&quot;</font></b>);<br />        <font color="#000080"><b>for</b></font>(<font color="#000080"><b>int </b></font>i=<font color="#0000ff">0</font>;i&lt;<font color="#660e7a"><b>parts</b></font>.size();i++)<br />        {<br />            System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#660e7a"><b>parts</b></font>.get(i));<br />        }<br />    }<br />}<br /></pre>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><br />


<font color="#000080"><b>class </b></font>Director<br />{<br />    IBuilder <font color="#660e7a"><b>myBuilder</b></font>;<br /><br />    <font color="#808080"><i>// A series of steps&#8212;for the production<br />    </i></font><font color="#000080"><b>public void </b></font>construct(IBuilder builder)<br />    {<br />        <font color="#660e7a"><b>myBuilder</b></font>=builder;<br />        <font color="#660e7a"><b>myBuilder</b></font>.BuildBody();<br />        <font color="#660e7a"><b>myBuilder</b></font>.InsertWheels();<br />        <font color="#660e7a"><b>myBuilder</b></font>.AddHeadlights();<br />    }<br />}<br /></pre>
    <p>
      //Main
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt">System.<font color="#660e7a"><b><i>out</i></b></font>.println(<font color="#008000"><b>&quot;***Builder Pattern Demo***</b></font><b><font color="#000080">\n</font><font color="#008000">&quot;</font></b>);<br /><br />Director director = <font color="#000080"><b>new </b></font>Director();<br /><br />IBuilder carBuilder = <font color="#000080"><b>new </b></font>Car();<br />IBuilder motorBuilder = <font color="#000080"><b>new </b></font>MotorCycle();<br /><br /><font color="#808080"><i>// Making Car<br /></i></font>director.construct(carBuilder);<br />Product p1 = carBuilder.GetVehicle();<br />p1.Show();<br /><br /><font color="#808080"><i>//Making MotorCycle<br /></i></font>director.construct(motorBuilder);<br />Product p2 = motorBuilder.GetVehicle();<br />p2.Show();<br /></pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &#160;Product completed as below :
    </p>
    <p>
      This is a body of a Car
    </p>
    <p>
      4 wheels are added
    </p>
    <p>
      2 Headlights are added
    </p>
    <p>
      
    </p>
    <p>
      &#160;Product completed as below :
    </p>
    <p>
      This is a body of a Motorcycle
    </p>
    <p>
      2 wheels are added
    </p>
    <p>
      1 Headlights are added
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483351035825" ID="ID_7928469" MODIFIED="1483351819039" TEXT="FactoryPattern">
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1483351051164" ID="ID_1017481166" MODIFIED="1494521296793" TEXT="SingletonPattern">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4">Ensure a class only has one instance, and provide a global point of access to it. </font>
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080" size="4"><b>class </b></font><font size="4">MakeACaptain<br size="4" />{<br size="4" />    </font><font color="#000080" size="4"><b>private static </b></font><font size="4">MakeACaptain </font><font color="#660e7a" size="4"><i>_captain</i></font><font size="4">;<br size="4" />    </font><font color="#808080" size="4"><i>//We make the constructor private to prevent the use of &quot;new&quot;<br size="4" />    </i></font><font color="#000080" size="4"><b>private </b></font><font size="4">MakeACaptain() { }<br size="4" /><br size="4" />    </font><font color="#000080" size="4"><b>public static </b></font><font size="4">MakeACaptain getCaptain()<br size="4" />    {<br size="4" /><br size="4" />        </font><font color="#808080" size="4"><i>// Lazy initialization<br size="4" />        </i></font><font color="#000080" size="4"><b>if </b></font><font size="4">(</font><font color="#660e7a" size="4"><i>_captain </i></font><font size="4">== </font><font color="#000080" size="4"><b>null</b></font><font size="4">)<br size="4" />        { </font><font color="#660e7a" size="4"><i>_captain </i></font><font size="4">= </font><font color="#000080" size="4"><b>new </b></font><font size="4">MakeACaptain();<br size="4" />            System.</font><font color="#660e7a" size="4"><b><i>out</i></b></font><font size="4">.println(</font><font color="#008000" size="4"><b>&quot;New Captain selected for our team&quot;</b></font><font size="4">);<br size="4" />        }<br size="4" />        </font><font color="#000080" size="4"><b>else<br size="4" />        </b></font><font size="4">{<br size="4" />            System.</font><font color="#660e7a" size="4"><b><i>out</i></b></font><font size="4">.print(</font><font color="#008000" size="4"><b>&quot;You already have a Captain for your team.&quot;</b></font><font size="4">);<br size="4" />            System.</font><font color="#660e7a" size="4"><b><i>out</i></b></font><font size="4">.println(</font><font color="#008000" size="4"><b>&quot;Send him for the toss.&quot;</b></font><font size="4">);<br size="4" />        }<br size="4" />        </font><font color="#000080" size="4"><b>return </b></font><font color="#660e7a" size="4"><i>_captain</i></font><font size="4">;<br size="4" /><br size="4" />    }<br size="4" />}<br size="4" /></font></pre>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">Improvements to the above method </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">i. Use of &#8220;synchronized&#8221; keyword: public static synchronized MakeACaptain getCaptain(){&#160;&#160;//our code} </font>
    </p>
    <p>
      <font size="4">&#160;&#160;&#160;&#160;&#160;&#160;With the above solution we need to pay for the performance cost associated with this synchronization method. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">ii. Eager&#160;&#160;Initialisation </font>
    </p>
    <p>
      <font size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//Early initialization </font>
    </p>
    <p>
      <font size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private static MakeACaptain _captain = new MakeACaptain(); </font>
    </p>
    <p>
      <font size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//We make the constructor private to prevent the use of &quot;new&quot; </font>
    </p>
    <p>
      <font size="4">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;private MakeACaptain() { } </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">In the above solution an object of the singleton class is always instantiated. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4">iii. To deal with both the above two cases, the third approach is the standard way&#160;&#160;to&#160;&#160;create singletons </font>
    </p>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: DejaVu Sans Mono; font-size: 9.0pt"><font color="#000080" size="4"><b>class </b></font><font size="4">MakeACaptain<br size="4" />{<br size="4" />    </font><font color="#000080" size="4"><b>private static </b></font><font size="4">MakeACaptain </font><font color="#660e7a" size="4"><i>_captain</i></font><font size="4">;<br size="4" />    </font><font color="#808080" size="4"><i>//We make the constructor private to prevent the use of &quot;new&quot;<br size="4" />    </i></font><font color="#000080" size="4"><b>private </b></font><font size="4">MakeACaptain() { }<br size="4" /><br size="4" />    </font><font color="#000080" size="4"><b>public static </b></font><font size="4">MakeACaptain getCaptain()<br size="4" />    {<br size="4" />        </font><font color="#000080" size="4"><b>return </b></font><font size="4">SingletonHelper.</font><font color="#660e7a" size="4"><b><i>_caption</i></b></font><font size="4">;<br size="4" /><br size="4" />    }<br size="4" /><br size="4" />    </font><font color="#000080" size="4"><b>private static class </b></font><font size="4">SingletonHelper{<br size="4" />        </font><font color="#000080" size="4"><b>private static final </b></font><font size="4">MakeACaptain </font><font color="#660e7a" size="4"><b><i>_caption </i></b></font><font size="4">= </font><font color="#000080" size="4"><b>new </b></font><font size="4">MakeACaptain();<br size="4" />    }<br size="4" />}</font></pre>
    <p>
      
    </p>
    <p>
      <font size="4">This method does not need to use the synchronization technique and eager initialization.</font>
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-5"/>
</node>
</node>
</node>
</map>

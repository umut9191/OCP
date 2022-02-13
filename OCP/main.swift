//
//  main.swift
//  OCP
//
//  Created by Mac on 28.01.2022.
//

import Foundation
//Objects Pool Pattern Codes Starts from here;

var cnn = Connectionx(connectionString: "k1")
cnn.Open()
cnn.Execute(query: "Select1")
cnn.Close()

var cnn2 = Connectionx(connectionString: "k1")
cnn2.Open()
cnn2.Execute(query: "Select2")
cnn2.Close()

var cnn3 = Connectionx(connectionString: "k2")
cnn3.Open()
cnn3.Execute(query: "select3")
cnn3.Close()



//Objects Pool Pattern Codes Ends here.







//Delegation Pattern Starts here;

//var c = C()
//c.ToDelegation(delegate: A())
//c.Task()
//
//c.ToDelegation(delegate: B())
//c.Task()
//2.example;
//var project = Project()
//project.name = "Orpheus"
//
//var task1 = Taskx()
//task1.Description = "Analysis"
//task1.Delegate = project
//task1.Status = false
//
//project.Tasks.append(task1)
//
//var task2 = Taskx()
//task2.Description = "Designing"
//task2.Delegate = project
//task2.Status = false
//
//project.Tasks.append(task2)
//
//
//var task3 = Taskx()
//task3.Description = "Coding"
//task3.Delegate = project
//task3.Status = false
//
//project.Tasks.append(task3)
//
//print("--------*----------")
//project.Tasks[0].Status = true
//project.Tasks[1].Status = true

//Delegation Pattern Ends here.








//FlyWeight pattern codes Starts from here;

//var multivibrator = Circuit.Create()
//
//var e1 = Element(detail: "R1 100", location: Locationxy(x:1,y:1), type: ElementTypes.Resistance)
//e1.Render()
//Circuit.AddElement(element: e1)
//
//var e2 = Element(detail: "R2 22K", location: Locationxy(x:1,y:2), type: ElementTypes.Resistance)
//e2.Render()
//Circuit.AddElement(element: e2)
//
//var e3 = Element(detail: "R3 100", location: Locationxy(x:1,y:3), type: ElementTypes.Resistance)
//e3.Render()
//Circuit.AddElement(element: e3)
//
//var e4 = Element(detail: "R4 470", location: Locationxy(x:1,y:4), type: ElementTypes.Resistance)
//e4.Render()
//Circuit.AddElement(element: e4)
//
//var e5 = Element(detail: "LED1", location: Locationxy(x:2,y:1), type: ElementTypes.Led)
//e5.Render()
//Circuit.AddElement(element: e5)
//
//var e6 = Element(detail: "LED2", location: Locationxy(x:2,y:4), type: ElementTypes.Led)
//e6.Render()
//Circuit.AddElement(element: e6)
//
//var e7 = Element(detail: "C1 100", location: Locationxy(x:3,y:1), type: ElementTypes.capacitor)
//e7.Render()
//Circuit.AddElement(element: e7)
//
//var e8 = Element(detail: "R5 47K", location: Locationxy(x:3,y:3), type: ElementTypes.Resistance)
//e8.Render()
//Circuit.AddElement(element: e8)
//
//var e9 = Element(detail: "T1 BC 547", location: Locationxy(x:4,y:1), type: ElementTypes.Transistor)
//e9.Render()
//Circuit.AddElement(element: e9)
//
//var e10 = Element(detail: "T1 BC 547", location: Locationxy(x:4,y:4), type: ElementTypes.Transistor)
//e10.Render()
//Circuit.AddElement(element: e10)
//
//print("Different Element number: \(multivibrator.ElementCount)")

//FlyWeight pattern codes ends here.








////Composite Pattern starts from here;
//var root:Panel=Panel(name: "root")
//var leaf1:UIComponent=UIComponent(name: "Leaf 1.1")
////This work will be reason for throwing exeption
////leaf1.Add(component: UIComponent(name: "trying"))
//root.Add(component: leaf1)
//var pnl2:Panel=Panel(name: "pnl 1.2")
//root.Add(component: pnl2)
//pnl2.Add(component: UIComponent(name: "Leaf 2.1"))
//
//pnl2.Add(component: Panel(name: "pnl 2.2"))
//
//pnl2.GetChild(index: 1)?.Add(component: UIComponent(name: "Leaf 2.2.1"))
//pnl2.GetChild(index: 1)?.Add(component: UIComponent(name: "Leaf 2.2.2"))
////all Objects will be rendered;
//root.Render()



//Compozite Pattern ends here.






//Bridge Pattern starts here;
//var obj:Abstraction = RefinedAbstraction(implementor: ConcreteImplementor1())
//obj.Operation()
//obj.implementor = ConcreteImplementor2()
//obj.Operation()

//2. example;
//var btn:IControl = Button(name: "Buttons")
//btn.ControlImplementor = AndroidButton()
//btn.Render()
//
//btn.ControlImplementor = IOSButton()
//btn.Render()
//
//var txt:IControl = TextBox(name: "TextBoxes")
//txt.ControlImplementor = IOSTextBox()
//txt.Render()
//
//txt.ControlImplementor = AndroidTextBox()
//txt.Render()


//Bridge Pattern ends here.






//Facade Pattern stars here;
//var f:Facade =  Facade.Current
//Facade.Current.Func()
//Facade.Current.DoWork()
//Facade.Current.Sample()
//Facade.Current.SubSystem1x.Foo()
//Facade.Current.SubSystem3x.Tar()
//Facade Pattern Ends here.



//Adapter Pattern starts here;

//var target:Target = Adapter()
//target.Reguest()

//Adapter pattern is ends here.





//Decorator Pattern Starts from here;

//var wnd1:IWindow = LoginWindow(title: "Entering to the System")
//var wnd2:IWindow = ReportWindow(title: "Stock Report Screen")
//var wnd3:IWindow = ReportWindow(title: "Sale Report Screen")
//
//var decorator1:ScrollDecorator = ScrollDecorator(targetWindow: wnd2, title: "Stock Report Screen")
//var decorator2:ThemeDecorator = ThemeDecorator(targetWindow: wnd1, title: "Entering to the System")
//var decorator3:ThemeDecorator = ThemeDecorator(targetWindow: wnd3, title: "Sale Report Screen")
//var decorator4:ThemeDecorator = ThemeDecorator(targetWindow: wnd2, title: "Stock Report Screen")
//
//decorator1.ScrollBy(amount: 5)
//decorator2.SetTheme(name: "Horizon")
//decorator3.SetTheme(name: "Spring")
//decorator4.SetTheme(name: "Sea")

//Decorator pattern ends here.




//Memento Design Pattern starts here;

//var ti = ToolInfos()
//ti.type = ToolsTypes.Transistor
//ti.detail = "BC-237"
//ti.location = Location(x:12,y:35)
//
//var originator = Tool(toolInfo: ti)
//print(originator.String())
//
//var memento:Memento = originator.CreateMemento()
//
//var ti2 = ToolInfos()
//ti2.type = ToolsTypes.Transistor
//ti2.detail = "BC-547"
//ti2.location = Location(x:12,y:37)
//
//originator.ToolInfo = ti2
//print(originator.String())
//
//originator.setMemento(memento: memento)
//print(originator.String())

//Memento Desigin Pattern ends here.




////Template Report Pattern starts here;
//func Reporting(rpt:ReportHelper){
//    rpt.CreateReport()
//
//}
//Reporting(rpt: Chart())
//Reporting(rpt: Pivot())
//
////
////example 2.
//TemplateMethodConceptual.test()

//Template Report Pattern ends here.



//State Pattern
//var thread = ThreadContext()
//thread.Start()
//thread.Sleep()
//thread.Abord()
//thread.Start()
//State Pattern is ends here.






//Strategy Pattern;
//var rectangle = Rectanglex(brush:SolidBrush())
//rectangle.Draw()
//var rectangle2 = Rectanglex(brush:LinearGradientBrush())
//rectangle2.Draw()
//Strategy Pattern ends here.






//Visitor Pattern

//var iC = IndividualCustomer(name: "Umut", surname: "Sürmeli")
//var cC = CorporateCustomer(name: "Aykut", surname: "Ağaoğlu", company: "Siberty")
//
//CreditUsing.Leasing(m: iC)
//CreditUsing.Leasing(m: cC)
//CreditUsing.Mortgage(m: iC)
//CreditUsing.Mortgage(m: cC)

//Visitor Pattern ends here.







//Command Pattern Starts;
//var kp = KeyPad()
//
//kp.RunCommand(commandName: "ENTER")
//kp.RunCommand(commandName: "DEL")
//kp.RunCommand(commandName: "CLR")

//CommandPattern ends here.






//chain of responsibiliy pattern;
//Client.OpenCall(cc: CallCenter())
//chain of responsibility ends here.



//Mediator pattern;
//var normalPersonMember = NormalPersonMember(nickName: "excalibur")
//var vipPersonMember = VIPMember(nickName: "vipExcalibur")
//var softwareRoom = SoftwareRoom()
//
//softwareRoom.addPerson(p: normalPersonMember)
//softwareRoom.addPerson(p: vipPersonMember)
//
//softwareRoom.sendMessageBroadcast(sender: vipPersonMember, message: "hi everybody")
//softwareRoom.sendMessage(sender: vipPersonMember, receiver: normalPersonMember, message: "hi normal person")
//softwareRoom.sendMessage(sender: normalPersonMember, receiver: vipPersonMember, message: "hi vip")
//mediator pattern ends here.



//Observer Pattern
//displaying controls ;
//func Display(c:Control){
//    print(c.Name + " " + c.Text)
//
//}
////Creating Controls
//var c1:Control = Label()
//c1.Name = "Test1"
//var c2:Control = Label()
//c2.Name = "Test2"
//
////creating stock object and registration kontrols
//var s1 = Stock()
////s1.Register(k: c1)
////s1.Register(k: c2)
//c1.Add(o: s1)
//c2.Add(o: s1)
//
//s1.Notify()
//Display(c: c1)
//Display(c: c2)
//
//s1.abstractQuantity()
//s1.Notify()
//Display(c: c1)
//Display(c: c2)
//
//c2.Remove(o: s1)
//
//s1.abstractQuantity()
//s1.Notify()
//Display(c: c1)
//Display(c: c2)
//


//Observer Pattern ends here.





//Iterator pattern;
//var saleDepartment = SaleDepartment()
//var saleDepartmentIterator = saleDepartment.getIterator()
//while(saleDepartmentIterator.next()){
//    print(saleDepartmentIterator.getItem().String())
//}
//
//var hrDepartment = HRDepartment()
//var hrDepartmentIterator = hrDepartment.getIterator()
//while(hrDepartmentIterator.next()){
//    print(hrDepartmentIterator.getItem().String())
//}
//Iterator pattern Ends here.







//Abstract Factory Pattern;
//var sql = FactoryUtil.GetFactory(db_name: "SQL")
//sql?.createConnection().Connect()
//sql?.createCommand().Execute()
//var oracle =  FactoryUtil.GetFactory(db_name: "Oracle")
//oracle?.createConnection().Connect()
//oracle?.createCommand().Execute()

//Abstract Factory Pattern Ends here.







////builder pattern;
//var list1 = ["ESP","air conditioning","Matte Paint"]
//Customer.CarDemand(brand: Brands.BMW, model: "1.16", demand_features: list1)
//var list2 = ["Steel rim","air conditioning","Sunroof"]
//Customer.CarDemand(brand: Brands.BMW, model: "1.16", demand_features: list2)
////builder pattern ends





//Prototype design pattern
//var mdl:Database = Database()
//var db1:Database = mdl.Clone()
//db1.Name = "Stocks"
//db1.AddTable(name: "Inventory")
//print(db1.Name)
//db1.TableList()
//print("---")
//var db2:Database = mdl.Clone()
//db2.Name = "CRM"
//db2.AddTable(name: "Customer")
//print(db2.Name)
//db2.TableList()

//ProtoType Design Pattern ends








//Factory Method Pattern;
//var tMint = TMint()
//var tl:TL = tMint.coinMoney(val: 100) as! TL
//print(tl.valueString)
//Factory Method Ğattern Ends.











//Singleton pattern
//var obj1 = Sample.CreateObject()
//var obj2 = Sample.CreateObject()
//var obj3 = Sample.CreateObject()
//
//obj1.SetData(val: 1234)
//print("obj1-Data\(obj1.GetData())")
//print("obj2-Data\(obj2.GetData())")
//print("obj3-Data\(obj3.GetData())")
//obj2.SetData(val:2222)
//print("obj1-Data\(obj1.GetData())")
//print("obj2-Data\(obj2.GetData())")
//print("obj3-Data\(obj3.GetData())")
//SingletonPattern ends











//Dependency Inversion
//
//func dIP(){
//    let parent = Person("John")
//    let child =  Person("Chris")
//    let child2 = Person("Matt")
//
//    let relationships = Relationships()
//    relationships.addParentAndChild(parent, child)
//    relationships.addParentAndChild(parent, child2)
//    let _ = Research(relationships)
//}
//dIP()
//Dependency Inversion Ends
//Liskov substitution Principle
func setAndMeasure(_ rc:Rectangle)
{
    rc.width = 3
    rc.height = 4
    print("Expected area to be 12 but got \(rc.area)")
}
func lsP(){
    let rc = Rectangle()
    setAndMeasure(rc)
    let sc = Square()
    setAndMeasure(sc)
}
//lsP()
//Liskov substitution ends here

//Open-Closed Principle;
func oCP(){
    let apple = Product("Apple", .green,.small)
    let tree = Product ("Tree", .green,.large)
    let house = Product("House",.blue,.large)
    
    let products = [apple,tree,house]
    
    let bf = BetterFilter()
    print("Green Products;")
    for p  in bf.filter(products, ColorSpecification(.green)) {
        print("\(p.name)  is grren")
    }
    
    print("large Blue Products;")
    for p  in bf.filter(products, AndSpecification(ColorSpecification(.blue),SizeSpecification(.large))) {
        print("\(p.name)  is blue and large ")
    }
}

//oCP()
//Open-Closed Priciple Ends here.

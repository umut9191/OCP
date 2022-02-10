//
//  main.swift
//  OCP
//
//  Created by Mac on 28.01.2022.
//

import Foundation

//Facade Pattern stars here;
//var f:Facade =  Facade.Current
//Facade.Current.Func()
//Facade.Current.DoWork()
//Facade.Current.Sample()
//Facade.Current.SubSystem1x.Foo()
//Facade.Current.SubSystem3x.Tar()

//Facade Oattern Ends here.







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

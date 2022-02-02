//
//  main.swift
//  OCP
//
//  Created by Mac on 28.01.2022.
//

import Foundation
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

//
//  main.swift
//  OCP
//
//  Created by Mac on 28.01.2022.
//

import Foundation
//Dependency Inversion

func dIP(){
    let parent = Person("John")
    let child =  Person("Chris")
    let child2 = Person("Matt")
    
    let relationships = Relationships()
    relationships.addParentAndChild(parent, child)
    relationships.addParentAndChild(parent, child2)
    let _ = Research(relationships)
}
dIP()
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

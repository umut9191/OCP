//
//  FlyWeightPattern.swift
//  OCP
//
//  Created by Macintosh on 13.02.2022.
//

import Foundation
//Flyweight pattern is primarily used to reduce the number of objects created and to decrease memory footprint and increase performance.
enum ElementTypes:String{
    case Resistance = "Resistance"
    case capacitor = "Capacitor"
    case Diode = "Diode"
    case Transistor = "Transistor"
    case Led = "LED"
}
class Locationxy{
    var x:Int=0,y:Int=0
    init(x:Int,y:Int){
        self.x=x
        self.y=y
    }
    func String()-> String
    {
        return "X: \(x) - Y: \(y)"
    }
}
protocol CircuitElement
{
    init(detail:String,location:Locationxy,type:ElementTypes)
    var type:ElementTypes
    {
        get
    }
    var detail:String
    {
        get
    }
    var location:Locationxy{
        get
    }
}

class Element:CircuitElement{
    var type: ElementTypes
    
    var detail: String
    
    var location: Locationxy
    required init(detail: String, location: Locationxy, type: ElementTypes) {
        self.detail = detail
        self.type = type
        self.location = location
    }
    func Render()
    {
        print("Rendered the \(detail) element that at position X: \(location.x) - Y: \(location.y) ")
    }
}
class Circuit{
    private static var d:Circuit?
    private static var elements:[Element]?
    //singleton;
    private init(){
        Circuit.elements = [Element]()
    }
    
    class func Create() -> Circuit
    {
        if d == nil{
            d = Circuit()
        }
        return d!
    }
    
    class func AddElement(element:Element)->Element
    {
        var temp:Element?
        for i in stride(from: 0, through: elements!.count-1, by: 1) {
            if elements![i].type == element.type{
                temp = element
                break
            }
        }
        if temp == nil {
            temp = Element(detail: element.detail, location: element.location, type: element.type)
            elements?.append(temp!)
        }
        return temp!
    }
    
    var ElementCount:Int{
        get{
            return Circuit.elements!.count
        }
    }
}

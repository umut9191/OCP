//
//  BuilderPattern.swift
//  OCP
//
//  Created by Mac on 31.01.2022.
//
// This pattern is from compozit products creating different pieces
import Foundation
public enum Brands:Int
{
    case BMW = 1
    case AUDI = 2
}
class Agency
{
    private var factory:Factory?
    init() {
        
    }
    func BMWDemand(model:String,Demands:[String]) -> BMW  {
        factory = BMWFactory()
        for demand in Demands{
            factory?.addFeature(feature: demand)
        }
        return factory?.produce(model: model) as! BMW
    }
    
    func AUDIDemand(model:String,Demands:[String]) -> AUDI {
        factory = AUDIFactory()
        for demand in Demands {
            factory?.addFeature(feature: demand)
        }
        return factory?.produce(model: model) as! AUDI
    }
}
protocol Factory
{
    func addFeature(feature:String)
    func produce(model:String)-> Car
}
class BMWFactory: Factory {
    private  var bmw:BMW =  BMW()
    func produce(model: String) -> Car {
        bmw.model = model
        return bmw
    }
    
    func addFeature(feature: String) {
    bmw.optionalParts.append(feature)
    }
    
    
}
class AUDIFactory: Factory {
    private var audi:AUDI = AUDI()
    func addFeature(feature: String) {
        audi.optionalParts.append(feature)
    }
    
    func produce(model: String) -> Car {
        audi.model = model
        return audi
    }
    
    
}
class Car{
    fileprivate var necessary_Parts:[String]
    fileprivate var optional_Parts:[String]
    fileprivate var model:String
    var optionalParts:[String]{
        get{
            return optional_Parts
        }
        set(val){
            optional_Parts = val
        }
    }
    init() {
        model = ""
        necessary_Parts = ["Motor","Radiator","wheel","spark plug","exhaust"]
        optional_Parts = [String]()
    }
}
class BMW: Car
{
    var Model:String{
        get{
            return super.model
        }
        set(val){
            super.model = val
        }
    }
    func String() -> String {
        var str:String = "BMW" + Model
        
        for i in 0...necessary_Parts.count-1 {
            str += necessary_Parts[i] + "\n\r"
        }
        for i in 0...optionalParts.count-1{
            str += optional_Parts[i] + "\n\r"
        }
        return str
    }

}
class AUDI: Car
{
    var Model:String{
        get{
            super.model
        }
        set(val){
            super.model = val
        }
    }
    func String() -> String {
        var str:String = "AUDI " + Model
        
        for i in 0...necessary_Parts.count-1 {
        str += necessary_Parts[i] + "\n\r"
        }
        for i in 0...optionalParts.count-1 {
            str += optional_Parts[i] + "\n\r"
        }
        return str
    }
        
}
class Customer
{
    class func CarDemand(brand:Brands,model:String,demand_features:[String]) {
        var agency:Agency = Agency()
        switch brand {
        case Brands.AUDI:
            var a:AUDI = agency.AUDIDemand(model: model, Demands: demand_features)
            print(a.String())
        case Brands.BMW:
            var b:BMW = agency.BMWDemand(model: model, Demands: demand_features)
            print(b.String())
        }
    }
}

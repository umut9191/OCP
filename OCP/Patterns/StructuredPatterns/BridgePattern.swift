//
//  BridgePattern.swift
//  OCP
//
//  Created by Mac on 11.02.2022.
//
import Foundation

//Bridge Pattern uses for  modeling the entities in the problem area by abstracting.
//For example  we are programming GUI framework  and a button should work for IOS,Android and Windows platforms
//So button entity should be abstracting and making different buton implementation for different platforms would be easier.
protocol Abstraction {
    var implementor:IImplementor
    {
        get
        set
    }
    init(implementor:IImplementor)
    func Operation()
}
protocol IImplementor {
    func Operation()
}
final class RefinedAbstraction: Abstraction {
   internal var mimplementor: IImplementor
    var implementor: IImplementor
    {
        get{
            return mimplementor
        }
        set(value){
            mimplementor = value
        }
    }
    func Operation() {
        mimplementor.Operation()
    }
    init(implementor: IImplementor) {
        self.mimplementor = implementor
    }
}
public class ConcreteImplementor1:IImplementor
{
    func Operation() {
        print("ConcreteImplementor1::Operation")
    }
}
public class ConcreteImplementor2:IImplementor
{
    func Operation() {
        print("ConcreteImplementor2::Operation")
    }
}



//
//  TemplateMethodPattern.swift
//  OCP
//
//  Created by Mac on 8.02.2022.
//

import Foundation

//The Template Method pattern suggests that you break down an algorithm into a series of steps, turn these steps into methods, and put a series of calls to these methods inside a single template method. The steps may either be abstract, or have some default implementation. To use the algorithm, the client is supposed to provide its own subclass, implement all abstract steps, and override some of the optional ones if needed (but not the template method itself).

protocol IReportHelper{
    func Render()
}
class ReportHelper: IReportHelper {
    //Template Method
    func CreateReport(){
        Query()
        Render()
    }
    func Query(){
        print("Records queried from database")
    }
    func Render() {
    
    }
}
class Chart:ReportHelper{
    override func Render() {
        print("graphic presentation of report")
    }
}
class Pivot: ReportHelper {
    override func Render() {
        print("Matris presentation of report")
    }
}

/////////////////////////
///////////////////////
//example 2.
protocol AbstractProtocol {

    /// The template method defines the skeleton of an algorithm.
    func templateMethod()

    /// These operations already have implementations.
    func baseOperation1()

    func baseOperation2()

    func baseOperation3()

    /// These operations have to be implemented in subclasses.
    func requiredOperations1()
    func requiredOperation2()

    /// These are "hooks." Subclasses may override them, but it's not mandatory
    /// since the hooks already have default (but empty) implementation. Hooks
    /// provide additional extension points in some crucial places of the
    /// algorithm.
    func hook1()
    func hook2()
}

extension AbstractProtocol {

    func templateMethod() {
        baseOperation1()
        requiredOperations1()
        baseOperation2()
        hook1()
        requiredOperation2()
        baseOperation3()
        hook2()
    }

    /// These operations already have implementations.
    func baseOperation1() {
        print("AbstractProtocol says: I am doing the bulk of the work\n")
    }

    func baseOperation2() {
        print("AbstractProtocol says: But I let subclasses override some operations\n")
    }

    func baseOperation3() {
        print("AbstractProtocol says: But I am doing the bulk of the work anyway\n")
    }

    func hook1() {}
    func hook2() {}
}

/// Concrete classes have to implement all abstract operations of the base
/// class. They can also override some operations with a default implementation.
class ConcreteClass1: AbstractProtocol {

    func requiredOperations1() {
        print("ConcreteClass1 says: Implemented Operation1\n")
    }

    func requiredOperation2() {
        print("ConcreteClass1 says: Implemented Operation2\n")
    }

    func hook2() {
        print("ConcreteClass1 says: Overridden Hook2\n")
    }
}

/// Usually, concrete classes override only a fraction of base class'
/// operations.
class ConcreteClass2: AbstractProtocol {

    func requiredOperations1() {
        print("ConcreteClass2 says: Implemented Operation1\n")
    }

    func requiredOperation2() {
        print("ConcreteClass2 says: Implemented Operation2\n")
    }

    func hook1() {
        print("ConcreteClass2 says: Overridden Hook1\n")
    }
}

/// The client code calls the template method to execute the algorithm. Client
/// code does not have to know the concrete class of an object it works with, as
/// long as it works with objects through the interface of their base class.
class Clientx {

    static func clientCode(use object: AbstractProtocol) {
    
        object.templateMethod()
    
    }

}


/// Let's see how it all works together.
class TemplateMethodConceptual {

   static func test() {

        print("Same client code can work with different subclasses:\n")
        Clientx.clientCode(use: ConcreteClass1())

        print("\nSame client code can work with different subclasses:\n")
        Clientx.clientCode(use: ConcreteClass2())
    }
    
}

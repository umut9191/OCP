//
//  FacadePattern.swift
//  OCP
//
//  Created by Mac on 9.02.2022.
//

import Foundation
//Facade Pattern is for library common input-output middel unit. Without knowing what is going on inside library we can use it.(Abstraction)
//Especially on N-tier architectural system  this pattern uses for loosely coupled.
// This pattern is also can mix up with Mediator pattern. But Mediator pattern can be known by Objects unlike to Facade.
//This pattern generally also use singletoon and factory method pattern

class Facade {
    private var s1:SubSystem1
    private var s2:SubSystem2
    private var s3:SubSystem3
    private static var f:Facade?
   private init() {
        s1 = SubSystem1()
        s2 = SubSystem2()
        s3 = SubSystem3()
    }
    class var Current:Facade
    {
        get{
            return createFacade()
        }
    }
    class func createFacade() -> Facade{
        if f == nil {
            f = Facade()
        }
        return f!
    }
    var SubSystem1x:SubSystem1
    {
        get{
            return s1
        }
    }
    var SubSystem3x:SubSystem3
    {
        get{
            return s3
        }
    }
    func Sample() {
        s1.Foo()
        s2.Bar()
    }
    func DoWork() {
        SubSystem4.Zet()
    }
    func Func()  {
        s3.Tar()
    }
}
class SubSystem1 {
    func Foo() {
        print("Subsystem1::Foo")
    }
    func Bar() {
        print("Subsystem1::Bar")
    }
}
class SubSystem2 {
    func Test() {
        print("Subsystem2::Test")
    }
    func Bar() {
        print("Subsystem2::Bar")
    }
}
class SubSystem3 {
    func Tar() {
        print("Subsystem3::Tar")
    }
    
}
class SubSystem4 {
   class func Zet() {
        print("Subsystem4::Zet")
    }
}

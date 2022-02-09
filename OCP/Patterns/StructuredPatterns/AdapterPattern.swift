//
//  AdapterPattern.swift
//  OCP
//
//  Created by Mac on 9.02.2022.
//

import Foundation
//Adapter pattern making unadapted thing adapted with using a common class

class Adaptee {
    func Foo() {
        print("Adaptee.Foo")
    }
}
class Target {
    func Reguest()  {
        print("Target.Request")
    }
}
class Adapter: Target {
    private var adaptee:Adaptee = Adaptee()
    override func Reguest() {
        adaptee.Foo()
    }
}

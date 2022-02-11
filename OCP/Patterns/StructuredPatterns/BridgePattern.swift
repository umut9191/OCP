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
/////////////
//Bridge example 2.;
protocol IControlImplementor {
    func Display()
}
protocol IControl {
    var Name:String
    {
        get
        set
    }
    var ControlImplementor:IControlImplementor{
        get
        set
    }
    init(name:String)
    func Render()
}

class Button: IControl {
    private var name:String
    internal var m_IControlImplementor:IControlImplementor?
    
    required init(name: String) {
        self.name = name
        m_IControlImplementor = nil
    }
    
    var Name: String
    {
        get{
            return name
        }
        set(value){
            name = value
        }
    }
    var ControlImplementor: IControlImplementor
    {
        get{
            return m_IControlImplementor!
        }
        set(value){
            if value is IOSButton || value is AndroidButton {
                m_IControlImplementor = value
            }else{
                print("wrong implementor setted.")
            }
            
            
        }
    }
    func Render() {
        self.m_IControlImplementor?.Display()
    }
    
    
}
class TextBox: IControl {
    private var name:String
    internal var m_IControlImplementor:IControlImplementor?
    
    required init(name: String) {
        self.name = name
        m_IControlImplementor = nil
    }
    
    var Name: String
    {
        get{
            return name
        }
        set(value){
            name = value
        }
    }
    var ControlImplementor: IControlImplementor
    {
        get{
            return m_IControlImplementor!
        }
        set(value){
            if value is IOSTextBox || value is AndroidTextBox {
                m_IControlImplementor = value
            }else{
                print("wrong implementor setted.")
            }
        }
    }
    func Render() {
        self.m_IControlImplementor?.Display()
    }
    
    
}
class IOSButton:IControlImplementor{
    func Display() {
        print("IOS Button")
    }
    
    
}
class IOSTextBox: IControlImplementor {
    func Display() {
        print("IOS Textbox")
    }
    
    
}
class AndroidButton: IControlImplementor {
    func Display() {
        print("Android Button")
    }
    
    
}
class AndroidTextBox: IControlImplementor {
    func Display() {
        print("Android TextBox")
    }
}

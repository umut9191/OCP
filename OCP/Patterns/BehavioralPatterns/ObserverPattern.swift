//
//  ObserverPattern.swift
//  OCP
//
//  Created by Mac on 5.02.2022.
//

import Foundation

//Observer Pattern is listenen for change than behave something we said. This pattern uses for listenin something example  View observer a Model for reaction when something happen to Model.

protocol Observable {
    func Register(k:Control)
    func Unregister(k:Control)
    func Notify()
}
class Stock:Observable
{
    private var m_Quantity:Int
    private var m_controller:[Control]
    init() {
        m_controller = [Control]()
        m_Quantity = 10
    }
    func abstractQuantity()
    {
        m_Quantity -= 1
    }
    func Register(k: Control) {
        m_controller.append(k)
    }
    
    func Unregister(k: Control) {
        var index = 0
        for t in m_controller {
            if (t.Name==k.Name) && (t.Text == k.Text) {
                break
            }
            index += 1
        }
        m_controller.remove(at: index)
    }
    
    func Notify() {
        for i in 0...m_controller.count -  1 {
            m_controller[i].onAction(val: String(m_Quantity))
        }
    }
    
    
}
protocol Control
{
    var Text:String
    {
        get
        set
    }
    var Name:String
    {
        get
        set
    }
    func onAction(val:String)
    
    //binding and unbinding
    func Add(o:Observable)
    func Remove(o:Observable)
}
class Label: Control {
    private var _name:String = ""
    private var _text:String = ""
    var Text: String{
        get{
           return _text
        }
        set(val){
           _text = val
            
        }
    }
    
    var Name: String{
        get{
            return _name
        }
        set(val){
            _name = val
            
        }
    }
    
    func onAction(val: String) {
        _text = val
    }
    
    func Add(o: Observable) {
        o.Register(k: self)
    }
    
    func Remove(o: Observable) {
        o.Unregister(k: self)
    }
    
   
}

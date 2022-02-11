//
//  CompositePattern.swift
//  OCP
//
//  Created by Mac on 12.02.2022.
//

import Foundation
//Compozite Pattern; This pattern is a structural pattern that provides a solution for performing various operations on object compositions in the form of a tree hierarchy, consisting of sub-objects with the same interface and within itself.
//leaf: Does not has children
//Composite: can has children
protocol IComponent
{
    var Name:String{
        get
        set
    }
    var Parent:Component
    {
        get
    }
    var Children:[Component]
    {
        get
    }
    init(name:String)
    func createChildrenList()
    func Add(component:Component)
    func GetChild(index:Int)->Component?
    func Render()
    
}
class Component: IComponent {
    private var _name:String
    private var _parent:Component?
    fileprivate var _children:[Component]?
    
    var Name: String{
        get{
            return _name
        }
        set(value){
            _name = value
        }
    }
    
    var Parent: Component{
        get{
            return _parent!
        }
      
    }
    
    var Children: [Component]{
        get{
            return _children!
        }
    }
    
    required init(name: String) {
        _name = name
        _children = nil
    }
    
    func createChildrenList() {
        _children = [Component]()
    }
    
    func Add(component: Component) {
        if self is UIComponent {
            print("this process cant be done")
        }else{
            _children?.append(component)
        }
    }
    
func GetChild(index: Int)->Component? {
        if self is UIComponent {
            print("this process cant be done")
            return nil
        }else{
           return _children?[index]
        }
    }
    
    func Render() {
        
    }
    


}
//Leaf;
class UIComponent: Component {
    required init(name: String) {
        super.init(name: name)
    }
    override func Render() {
        print( "\(Name) is Leaf elemnt rendered")
    }
}
//Composite
class Panel: Component {
    required init(name: String) {
        super.init(name: name)
        createChildrenList()
    }
    override func Render() {
        print( "\(Name) is composit element rendered")
        if _children!.count != 0{
            for  c in _children! {
                c.Render()
            }
        }
    }
}

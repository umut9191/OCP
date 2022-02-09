//
//  DecoratorPattern.swift
//  OCP
//
//  Created by Mac on 9.02.2022.
//

import Foundation
//Decorator pattern; unlike Visitor pattern,Decorator pattern is for giving extra feature to Objects.
//The inpotant thing is here Class not effects.
protocol IWindow{
    var Title:String{
        get
        set
        
    }
    func Render()
}

class Window{
    fileprivate var title:String
    var Title:String{
        get{
            return title
        }
        set(value){
            title = value
        }
    }
    init(title:String) {
        self.title = title
    }
}
class LoginWindow:Window,IWindow{
    override init(title:String){
        super.init(title: title)
    }
    func Render() {
        print(title+" Login Screen Rendered")
    }
}
class ReportWindow:Window,IWindow{
    override init(title:String){
        super.init(title: title)
    }
    func Render() {
        print(title+" Report Screen Rendered")
    }
}
class WindowDecorator: Window {
    var targetWindow:IWindow
    init(targetWindow:IWindow,title: String) {
        self.targetWindow = targetWindow
        super.init(title: title)
    }
}
class ScrollDecorator:WindowDecorator{
    override init(targetWindow: IWindow, title: String) {
        super.init(targetWindow: targetWindow, title: title)
    }
    func Render() {
        self.targetWindow.Render()
    }
    func ScrollBy(amount:Int) {
        print("The \(targetWindow.Title) screen \(amount) unit scrolled")
        Render()
    }
}
class ThemeDecorator:WindowDecorator{
    override init(targetWindow: IWindow, title: String) {
        super.init(targetWindow: targetWindow, title: title)
    }
    func Render() {
        self.targetWindow.Render()
    }
    func SetTheme(name:String) {
        print("The \(targetWindow.Title) screen \(name) theme selected")
        Render()
    }
}

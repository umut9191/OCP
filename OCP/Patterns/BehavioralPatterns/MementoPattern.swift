//
//  MementoPattern.swift
//  OCP
//
//  Created by Mac on 9.02.2022.
//

import Foundation

//Memento Design pattern uses for going beetween objects states

enum ToolsTypes:String
{
    case Reistance = "Resistance"
    case Capacitor = "Capacitor"
    case Transistor = "Transistor"
}
class Location {
    public var x:Int,y:Int
    init(x:Int,y:Int) {
        self.x=x
        self.y=y
    }
    func String() -> String {
        return "x:\(x) - y:\(y)"
    }
}
class ToolInfos {
    var type: ToolsTypes
    var detail:String
    var location:Location
    init() {
        type = ToolsTypes.Reistance
        detail = ""
        location = Location(x:0,y:0)
    }
}
class Tool {
    //state;
    private var _toolInfo:ToolInfos
    
    public var ToolInfo:ToolInfos
    {
        get{
            return _toolInfo
        }
        set(value){
            _toolInfo = value
        }
    }
    init(toolInfo:ToolInfos) {
        self._toolInfo = toolInfo
    }
    func CreateMemento() -> Memento {
        return Memento(toolInfo:_toolInfo)
    }
    func setMemento(memento:Memento) {
        self.ToolInfo = memento.ToolInfo
    }
    func String() ->String{
        var s:String
        s = "Tool Detail: \n\r"
        s += "Type: \(ToolInfo.type.rawValue) \n\r"
        s += "Detail: \(ToolInfo.detail) \n\r"
        s += "Location: \(ToolInfo.location.x):\(ToolInfo.location.y) \n\r"

        return s
    }
}
class Memento {
    //state;
    private var _toolInfo:ToolInfos
    
    public var ToolInfo:ToolInfos
    {
        get{
            return _toolInfo
        }
        set(value){
            _toolInfo = value
        }
    }
    init(toolInfo:ToolInfos) {
        self._toolInfo = toolInfo
    }
}

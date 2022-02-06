//
//  ChainOfResponsibilityPattern.swift
//  OCP
//
//  Created by Mac on 6.02.2022.
//

import Foundation
//Chain of responsibility pattern; This pattern uses when a task sending by client to closed system that client doesnt know how will be handing by Objects that doing their work with a order.

class Operator
{
    private var status : Bool
    private var name : String
    private var next_operator : Operator?
    init(name:String) {
        self.name = name
        self.status = false
        self.next_operator = nil
    }
    var Next_Operator:Operator
    {
        get{
            return next_operator!
        }
        set(value){
            next_operator = value
        }
    }
    var Name:String
    {
        get
        {
            return name
        }
    }
    var Status:Bool
    {
        get{
            return status
        }
        set(val){
            status = val
        }
    }
    func answerTheCall(){
        if status {
            print("\(name) answered the call")
        }
        else if next_operator != nil{
            next_operator?.answerTheCall()
        }else{
            print("call on hold")
        }
    }
}
class CallCenter {
    private var agents = [Operator]()
    init() {
        let o1:Operator = Operator(name: "umut")
        let o2:Operator = Operator(name: "Aykut")
        let o3:Operator = Operator(name: "Hücran")
        let o4:Operator = Operator(name: "Zafer")
        
        //
        o1.Status = false
        o2.Status = false
        o3.Status = true
        o4.Status = false
        
        o1.Next_Operator = o2
        o2.Next_Operator = o3
        o3.Next_Operator = o4
        
        agents.append(o1)
        agents.append(o2)
        agents.append(o3)
        agents.append(o4)
        
    }
    
    func acceptCall(){
        agents[0].answerTheCall()
    }
}

class Client {
    class func OpenCall(cc:CallCenter)
    {
        cc.acceptCall()
    }
}




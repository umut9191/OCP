//
//  MediatorPattern.swift
//  OCP
//
//  Created by Mac on 6.02.2022.
//

import Foundation
//Mediator pattern; without knowing each other , objects will communucate with each other via another centeralize object.

protocol Room{
    func addPerson(p:PersonMember)
    func sendMessage(sender:PersonMember,receiver:PersonMember,message:String)
    func sendMessageBroadcast(sender:PersonMember,message:String)
}
protocol PersonMember{
    var Nick:String
    {
        get
        set
    }
    func ReceiveMessage(sender:PersonMember,message:String)
}
class SoftwareRoom: Room {
    private var personMembers = [PersonMember]()
     init(){
        
    }
    func addPerson(p: PersonMember) {
        personMembers.append(p)
    }
    
    func sendMessage(sender: PersonMember, receiver: PersonMember, message: String) {
        receiver.ReceiveMessage(sender: sender, message: message)
    }
    
    func sendMessageBroadcast(sender: PersonMember, message: String) {
        for k in self.personMembers {
            k.ReceiveMessage(sender: sender, message: message)
        }
    }
}
class NormalPersonMember: PersonMember {
    var Nick: String
    
    init(nickName:String) {
        self.Nick = nickName
    }
    var NickName:String{
        get{
            return Nick
        }
        set(value){
            Nick = value
        }
    }
    func ReceiveMessage(sender: PersonMember, message: String) {
        print("\(sender.Nick) -> \(self.Nick): \(message)")
    }
}
class VIPMember: PersonMember {
    var Nick: String
    
    init(nickName:String) {
        self.Nick = nickName
    }
    var NickName:String{
        get{
            return Nick
        }
        set(value){
            Nick = value
        }
    }
    func ReceiveMessage(sender: PersonMember, message: String) {
        print("\(sender.Nick) -> \(self.Nick): \(message)")
    }
}

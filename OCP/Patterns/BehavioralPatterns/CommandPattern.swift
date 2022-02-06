//
//  CommandPattern.swift
//  OCP
//
//  Created by Mac on 6.02.2022.
//

import Foundation
//Command Pattern ; Uses for seperate client objects and objects that will execute the operation for clients with another objects

class ATM {
    func Clr()
    {
        print("ATM::CLR")
    }
    func Enter() {
        print("ATM::ENTER")
    }
    func Del() {
        print("ATM::DEL")
    }
}
protocol Commandx {
    func execute()
}
class ClearScreen: Commandx {
    private var atm:ATM
    init() {
            atm = ATM()
    }
    func execute() {
        atm.Clr()
    }
}
class Delete: Commandx {
    private var atm:ATM
    init() {
            atm = ATM()
    }
    func execute() {
        atm.Del()
    }
}
class Enter: Commandx {
    private var atm:ATM
    init() {
            atm = ATM()
    }
     func execute() {
        atm.Enter()
    }
}
class KeyPad {
private var commands = Dictionary<String,Commandx>()
    init() {
        commands["DEL"] = Delete()
        commands["CLR"] = ClearScreen()
        commands["ENTER"] = Enter()
    }
    func RunCommand(commandName:String)  {
        commands[commandName]?.execute()
    }
}

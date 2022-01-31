//
//  PrototypePattern.swift
//  OCP
//
//  Created by Mac on 1.02.2022.
//

import Foundation

//Prototype pattern provide instance of object created from class. This helps object creations process faster.

protocol Clonable {
func Clone() -> Database
}
class Database: Clonable {
 
    
   private var name:String
  private  var m_Tables = [String]()
    
    public var Name:String{
        get {
            return name
        }
        set(val) {
            name = val
        }
    }
    init() {
        name = "Model"
        let sys_Tables:[String] = ["sysusers","sysindexes","sysfiles" ]
        m_Tables = [String]()
        for s in sys_Tables {
            m_Tables.append(s)
        }
    }
    func  AddTable(name:String){
        m_Tables.append(name)
    }
    public func TableList(){
        for i in 0...m_Tables.count - 1  {
          print(m_Tables[i])
        }
    }
    
   public func Clone() -> Database {
     return Database()
    }
}

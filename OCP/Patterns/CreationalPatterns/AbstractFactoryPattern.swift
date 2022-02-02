//
//  AbstractFactoryPattern.swift
//  OCP
//
//  Created by Mac on 2.02.2022.
//

import Foundation
//This pattern uses for members that different family or group concreate factories  creating by abstract factories.
//When we want to work with different object families we can use this pattern. And when we dont want client can know about concreate factories.

class FactoryUtil {
    class func GetFactory(db_name:String) -> DBFactory?
    {
        switch db_name {
        case "SQL":
            return SQLFactory()
        case "Oracle":
            return OracleFactory()
        default:
            return nil
        }
    }
}

protocol DBFactory {
func createConnection() -> Connection
func createCommand() -> Command
}

class SQLFactory:DBFactory {
    func createCommand() -> Command {
        return SQLCommand()
    }
    
    func createConnection() -> Connection {
        return SQLConnection()
    }
    
    
}
class OracleFactory:DBFactory
{
    func createConnection() -> Connection {
        return OracleConnection()
    }
    
    func createCommand() -> Command {
        return OracleCommand()
    }
    
    
}
protocol Connection {
    func Connect()
    var connectionString:String{
        get
        set
    }
}
protocol Command {
    func Execute()
    var Query:String{
        get
        set
    }
}
class SQLConnection: Connection {
    func Connect() {
        print("Connected to sql")
    }
    
  internal  var connectionString:String = ""
    var ConnectionString:String{
        get{
            return connectionString
        }
        set(value){
            connectionString = value
        }
    }
    
    
    
    
}
class OracleConnection: Connection {
    func Connect() {
        print("Connected to Oracle")
    }
    
   internal var connectionString: String = ""
    
    var ConectionString:String{
        get{
            return connectionString
            
        }
        set(value)
        {
          connectionString = value
        }
    }
    
    
}

class SQLCommand: Command {
    func Execute() {
    print("T-SQL Codes executed")
    }
    
   internal var Query: String = ""
    
    var QueryForExecete:String{
        get{
            return Query
        }
        set(value)
        {
            Query = value
        }
    }
    
    
}
class OracleCommand: Command {
    func Execute() {
        print("PL/SQL queries executed")
    }
    
   internal  var Query: String = ""
    var QueryForExecute:String
    {
        get{
            return Query
        }
        set(value)
        {
            Query = value
        }
    }
    
    
}


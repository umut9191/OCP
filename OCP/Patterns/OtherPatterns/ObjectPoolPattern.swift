//
//  ObjectPoolPattern.swift
//  OCP
//
//  Created by Macintosh on 13.02.2022.
//

import Foundation
//Object Pool Pattern is for perpormance.
//With this pattern Created Objects putting inside a pool
// when client needs a object and that object if inside the pool then no need to create it again.
class ConnectionContext{
    //it is holding if this object in use or not;
    private var is_Active:Bool
    var isActive:Bool{
        get
        {
            return is_Active
        }
        set(val)
        {
            is_Active = val
        }
    }
    init(){
        is_Active = false
        print("ConnectionContext Created")
    }
    func Open() {
        print("Connection Opened")
    }
    func Close()  {
        print("Connection Closed")
    }
    func Execute(query:String){
        print("\(query) runned")
    }
}
class Connectionx
{
    private var connectionString:String
    private var poolManager:PoolManager?
    private var con:ConnectionContext?
    
    var ConnectionString:String{
        get{
            return connectionString
        }
        set(value){
            connectionString = value
        }
    }
    init(connectionString:String)
    {
        self.connectionString = connectionString
    }
    func Open() {
        poolManager = PoolManager.createPool()
        con = poolManager?.TakeConnection(key: self.connectionString)!
        
        if con != nil {
            con?.Open()
        }else{
            print("There are no any objects inside the pool")
        }
    }
    func Close(){
        poolManager?.ReleaseConnection(connection: con!)
        con?.Close()
    }
    func Execute(query:String){
        con?.Execute(query: query)
    }
}
class PoolManager{
    private let POOL_SIZE:Int = 10
    private static var pm:PoolManager?
    private var pools:Dictionary<String,[ConnectionContext]>
    private init()
    {
        pools = Dictionary<String,[ConnectionContext]>(minimumCapacity: POOL_SIZE)
    }
    class func createPool()-> PoolManager
    {
        //pool manager singleton
        if pm == nil {
            pm = PoolManager()
        }
        return pm!
    }
    func TakeConnection(key:String) -> ConnectionContext? {
        if pools[key] != nil {
            let objects:[ConnectionContext] = pools[key]!
            for cu in objects {
                if !cu.isActive {
                    return cu
                }
            }
        }else{
            var newPool = [ConnectionContext]()
            for i in 0...POOL_SIZE-1 {
                newPool.append(ConnectionContext())
            }
            pools[key] = newPool
            let cu:ConnectionContext = newPool[0]
            cu.isActive = true
            return cu
        }
        return nil
    }
    func ReleaseConnection(connection:ConnectionContext)  {
        connection.isActive = false
    }
}

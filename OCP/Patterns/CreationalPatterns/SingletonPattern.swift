//
//  SingletonPattern.swift
//  OCP
//
//  Created by Mac on 31.01.2022.
//
//Every creation a object from a class; this consume memory
// if we want an class can be created just one time ;
//we are using singeton pattern. This way class can be created just one time
//Static is independent from object address in memory. It has its own nonchangeble memory address.
//if we run this code we will see all object created from class have same value that assign from any object using SetData().
//that means all object address references same place. So all object created same.
import Foundation


class Sample
{
    private static var m_smp:Sample?
    private var m_Data:Int = 0
    
    private init() {
        print("Sample class object created")
    }
    //this class keyword makes function use static variable an can call without instance required like static members
    class func CreateObject() -> Sample
    {
        if m_smp == nil {
            m_smp = Sample()
        }
        return m_smp!
    }
    func GetData() -> Int{
        return m_Data
    }
    func SetData(val:Int)
    {
        m_Data = val
    }
}


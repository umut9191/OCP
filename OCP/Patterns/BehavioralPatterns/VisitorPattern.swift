//
//  VisitorPattern.swift
//  OCP
//
//  Created by Mac on 6.02.2022.
//
import Foundation
//Visitor Pattern;
//we uses visitor pattern for without changing exists classes for giving to child classes extra features
protocol IVisitor
{
    func Visit(m:CustomerBank)
}
protocol ICustomer {
    func Accept(vst:IVisitor)
}
class CustomerBank {
    private var _name:String, _surname:String
    init(name:String,surname:String) {
        self._name = name
        self._surname = surname
    }
}
class IndividualCustomer: CustomerBank,ICustomer {
    override init(name:String,surname:String)
    {
        super.init(name: name, surname: surname)
    }
    func Accept(vst: IVisitor)
    {
        vst.Visit(m: self)
    }
}
class CorporateCustomer: CustomerBank,ICustomer {
    private var _company:String = ""
    init(name: String, surname: String,company:String) {
        super.init(name: name, surname: surname)
        self._company = company
    }
    func Accept(vst:IVisitor) {
        vst.Visit(m: self)
    }
}
class MortgageVisitor: IVisitor {
    func Visit(m:CustomerBank) {
        if m is IndividualCustomer {
            print("Individual customers can use  mortgage")
        }
        if m is CorporateCustomer {
            print("Corporate customers cant use mortgage")
        }
    }
}
class LeasingVisitor: IVisitor {
    func Visit(m:CustomerBank) {
        if m is IndividualCustomer {
            print("Individual customers cant use  leasing")
        }
        if m is CorporateCustomer {
            print("Corporate customers can use leasing")
        }
    }
}
class CreditUsing {
    class func Mortgage(m:ICustomer){
        m.Accept(vst: MortgageVisitor())
    }
    class func Leasing(m:ICustomer){
        m.Accept(vst: LeasingVisitor())
    }
}

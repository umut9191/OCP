//
//  FactoryMethodPattern.swift
//  OCP
//
//  Created by Mac on 31.01.2022.
//
import Foundation
//We are not reaching the Money class directly ,we are just telling which money we want so Mind with 'coinMoney' factoryMethod makes money
//This pattern mostly used for making codes clean and readible.
class Money{
    private var value : Int
    init(value:Int) {
        self.value = value
    }
    var valueString : String
    {
        get
        {
            return String(value) + " TL"
        }
    }
}
class TL:Money {
    fileprivate override init(value: Int) {
        super.init(value: value)
    }
}
protocol Mint{
    func coinMoney(val:Int) -> Money
}
class TMint: Mint{
    func coinMoney(val: Int) -> Money {
        return TL(value: val)
    }
}

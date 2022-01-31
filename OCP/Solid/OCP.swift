//
//  OCP.swift
//  OCP
//
//  Created by Mac on 28.01.2022.
//
//Open-Close Prinsible is close for modification and open for extensible
import Foundation
enum Color {
    case red
    case green
    case blue
}
enum Size {
    case small
    case medium
    case large
    case huge
}
class Product{
    var name: String
    var color: Color
    var size : Size
    
    init(_ name:String,_ color: Color,_ size: Size) {
        self.name = name
        self.color = color
        self.size = size
    }
}
protocol Specification {
    associatedtype T
    func isSatisfied(_ item: T) ->Bool
}
protocol Filter {
    associatedtype T
    func filter<Spec: Specification>(_ items: [T],_ spec: Spec) -> [T]
    where Spec.T == T
}
class ColorSpecification: Specification {
    typealias T = Product
    let color : Color
    init(_ color :Color) {
        self.color = color
    }
    func isSatisfied(_ item: Product) -> Bool {
        return item.color == color
    }
}
class SizeSpecification: Specification {
    typealias T = Product
    let size : Size
    init(_ size :Size) {
        self.size = size
    }
    func isSatisfied(_ item: Product) -> Bool {
        return item.size == size
    }
}
class AndSpecification<T,SpecA:Specification,SpecB:Specification> : Specification
where SpecA.T == SpecB.T, T == SpecA.T , T == SpecB.T{
    let first : SpecA
    let second : SpecB
    init(_ first: SpecA, _ second : SpecB) {
        self.first = first
        self.second = second
    }
    func isSatisfied(_ item: T) -> Bool {
        return first.isSatisfied(item) && second.isSatisfied(item)
    }
}
class BetterFilter: Filter {
typealias T = Product
    func filter<Spec:Specification>(_ items: [Product], _ spec: Spec) -> [Product] where  T == Spec.T
    {
        var result = [Product]()
        for i in items{
            if spec.isSatisfied(i) {
                result.append(i)
            }
        }
        return result
    }
}


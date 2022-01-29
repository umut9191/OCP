//
//  LSP.swift
//  OCP
//
//  Created by Mac on 29.01.2022.
//

import Foundation
//liskov substitution Principle ;
//Türemiş sınıf(Suquare) nesnelerinin taban(rectangle) sınıf nesneleri yerine geçmesini öngörür.
//Taban sınıf(Rectangle) türündeki nesne üzerinde operasyon yapacak şekilde geliştirilmiş bir fonksiyon(setMeasure())
//bu sınıftan türeyen farklı sınıflara(Square) ait nenseler üzerinde de aynı operasyonu yapabilir.
//Bu prensip, türemiş sınıf türündeki nesnelerin taban sınıflara ait nesnelere atanması halinde gerçekleşen(upcast diye bilinen)
//otomatik tür dönüşümünden faydalanır.
class Rectangle: CustomStringConvertible {
   public var description: String{
        return "width \(width) height: \(height)"
    }
     var _width = 0
     var _height = 0
    var width : Int
    {
        get { return _width}
        set (value){_width = value}
    }
    var height : Int
    {
        get{return _height}
        set(velue) {_height = velue}
    }
    init() {}
    init(_ width:Int, _ height:Int) {
        self._width=width
        self._height=height
    }
    
    var area : Int{
        return width*height
    }
}
//
class Square: Rectangle {
    override var width: Int
    {
        get{return _width}
        set(value){
            _width = value
            _height = value
        }
    }
    override var height: Int
    {
        get{return _height}
        set(value){
            _width = value
            _height = value
        }
    }
}

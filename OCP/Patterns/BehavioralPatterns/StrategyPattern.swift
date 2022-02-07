//
//  StrategyPattern.swift
//  OCP
//
//  Created by Mac on 7.02.2022.
//

import Foundation
//Strategy Pattern is uses for working with different algorithm but for same purpose Objects. Each different way(method or algorithm) has to have their own concrete class.
protocol Brush {
    func Paint()
}
class SolidBrush:Brush {
    func Paint() {
        print("One Color Painting")
    }
}
class LinearGradientBrush: Brush {
    func Paint() {
        print("Multi Color Linear Gradient Painting")
    }
}
class RadielGradientBrush: Brush {
    func Paint() {
        print("Multi Color Radial Gradient Painting")
    }
}
class Rectanglex{
    private var _brush:Brush
    init(brush:Brush) {
        _brush = brush
    }
    func Draw() {
        _brush.Paint()
        print("Rectangle")
    }
}

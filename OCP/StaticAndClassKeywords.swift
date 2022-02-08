//
//  StaticAndClassKeywords.swift
//  OCP
//
//  Created by Mac on 8.02.2022.
//

import Foundation

class StaticFunct {
    static func staticFunc(){
        print("This is a static function")
    }
}
class ClassFunct {
    class func classFunc(){
        print("This is a class func")
    }
}

class OverrideClassFunct: ClassFunct {
    override class func classFunc() {
        super.classFunc()
    }
}
class OverrideStaticFunct: StaticFunct {

//    override staticFunc(){
//        super.
//    }
}
//static functions can not overridden but class func can.

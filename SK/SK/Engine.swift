//
//  Engine.swift
//  TBLStudioBaseProject
//
//  Created by Thái Bô Lão on 10/16/15.
//  Copyright © 2015 TBLStudio. All rights reserved.
//

import UIKit

class Engine: NSObject {
    
    class var sharedInstance: Engine{
        struct Singleton {
            static let instance = Engine()
        }
        return Singleton.instance
    }
    
    override init() {
        super.init()
    }
    
    //MARK: App's colors
    class func colorFromHex(rgbValue: UInt32) -> UIColor {
        return UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16)/255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8)/255.0, blue: CGFloat((rgbValue & 0x0000FF) >> 0)/255.0, alpha: CGFloat((rgbValue & 0xFF000000) >> 24)/255.0)
    }
    
    class func bottomBarButtonPressedColor() -> UIColor {
        return colorFromHex(0xFF44b349);
    }
    
    class func navigationBarColor() -> UIColor {
        return colorFromHex(0xFF9AAAFF)
    }
    
    
    
}










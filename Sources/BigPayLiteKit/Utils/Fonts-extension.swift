//
//  File.swift
//  
//
//  Created by Benjamin Lee on 21/11/2023.
//

import Foundation
import UIKit

struct BigPayFont {
    enum FontType: String {
        case Bold = "Jost-Bold"
        case Regular = "Jost-Regular"
        case Mediym = "Jost-Medium"
        case SemiBold = "Jost-SemiBold"
    }
    
    static func font(type: FontType, size: CGFloat) -> UIFont{
        return UIFont(name: type.rawValue, size: size)!
    }
}

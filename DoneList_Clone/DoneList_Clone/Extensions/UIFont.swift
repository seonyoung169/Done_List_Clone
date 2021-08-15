//
//  UIFont.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/12.
//

import UIKit

extension UIFont {
    class func AppleSDGothic(type: AppleSDGothicType, size: CGFloat) -> UIFont! {
        guard let font = UIFont(name: type.name, size: size) else {
            return nil
        }
        return font
    }
    
    public enum AppleSDGothicType {
        case Bold
        
        var name: String {
            switch self {
            case .Bold:
                return "AppleSDGothicNeo-Bold"
                
            }
        }
    }
    
}

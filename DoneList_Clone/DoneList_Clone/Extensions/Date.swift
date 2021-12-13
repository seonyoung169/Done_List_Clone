//
//  Date.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/11/25.
//

import Foundation

extension Date {
    public var year : Int {
        return Calendar.current.component(.year, from: self)
    }
    
    public var month : Int {
        return Calendar.current.component(.month, from: self)
    }
    
    public var day : Int {
        return Calendar.current.component(.day, from: self)
    }
}

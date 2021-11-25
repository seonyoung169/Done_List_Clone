//
//  ReportModel.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/11/25.
//

import Foundation

struct DayDone {
    var date : Date
    var done : Int
}

struct WeekDoneModel {
    func getWeekDoneData() -> [DayDone] {
        return [
            DayDone(date: Date(), done: 3),
            DayDone(date: Date(), done: 4),
            DayDone(date: Date(), done: 10),
            DayDone(date: Date(), done: 2),
            DayDone(date: Date(), done: 1),
            DayDone(date: Date(), done: 0),
            DayDone(date: Date(), done: 7)
        ]
    }
}

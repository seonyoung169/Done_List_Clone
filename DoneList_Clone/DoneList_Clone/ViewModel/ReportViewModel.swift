//
//  ReportViewModel.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/11/25.
//

import Foundation

class ReportViewModel {
    let weekDoneData : [DayDone]
    let weekDoneModel = WeekDoneModel()
    
    var recordedDay : Int = 0
    var doneSum : Int = 0
    var doneAverage : Double = 0.0
    
    init() {
        weekDoneData = weekDoneModel.getWeekDoneData()
        
        for data in weekDoneData {
            if data.done > 0{
                recordedDay += 1
                doneSum += data.done
                doneAverage += Double(data.done)
            }
        }
        
        doneAverage /= 7.0
        doneAverage = round(doneAverage*10)/10
    }
    
}

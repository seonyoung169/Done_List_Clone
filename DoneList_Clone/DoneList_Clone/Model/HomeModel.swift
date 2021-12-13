//
//  Home.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/11/23.
//

import Foundation

struct Task {
    var icon : Int
    var name : String
}

struct TaskModel {
    func getTaskData() -> [Task]{
        return [
            Task(icon: 1, name: "병원 물리치료"),
            Task(icon: 2, name: "경의선 숲길 산책"),
            Task(icon: 3, name: "CS 공부 2시간"),
            Task(icon: 4, name: "저녁 약속"),
            Task(icon: 5, name: "자기 전 스트레칭"),
        ]
    }
}

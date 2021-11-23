//
//  HomeViewModel.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/11/23.
//

import Foundation

class HomeViewModel {
    let taskData : [Task]
    let taskModel = TaskModel()
    
    init(){
        taskData = taskModel.getTaskData()
    }
}

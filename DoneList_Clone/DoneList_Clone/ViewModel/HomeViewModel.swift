//
//  HomeViewModel.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/11/23.
//

import Foundation

class HomeViewModel {
    var taskData : [Task]
    var taskModel = TaskModel()
    
    init(){
        taskData = taskModel.getTaskData()
    }
}

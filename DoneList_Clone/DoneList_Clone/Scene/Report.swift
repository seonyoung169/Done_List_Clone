//
//  Report.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/16.
//

import UIKit

class ReportVC : UIViewController {
    
    var navigationBarArea = UIView()
    var backButton = UIImageView()
    var report = UILabel()
    
    var weekControlArea = UIView()
    var beforeArrow = UIImageView()
    var afterArrow = UIImageView()
    var period = UILabel()
    
    var graphArea = UIView()
    
    var statisticsArea = UIView()
    
    var dayClock = UIImageView()
    var day = UILabel()
    var dayCount = UILabel()
    
    var totalClock = UIImageView()
    var total = UILabel()
    var totalCount = UILabel()
    
    var averageClock = UIImageView()
    var average = UILabel()
    var averageCount = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() -> Void {
        
        navigationBarArea.backgroundColor = .clear
        backButton.backgroundColor = .blue
        report.text = "리포트"
        report.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)
        report.textAlignment = .center
        
        weekControlArea.backgroundColor = .clear
        beforeArrow.backgroundColor = .green
        afterArrow.backgroundColor = .green
        period.text = "7월 29일 ~ 8월 4일"
        period.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        period.textAlignment = .center
        
        graphArea.backgroundColor = .white
        graphArea.layer.cornerRadius = 20
        
        dayClock.backgroundColor = .orange
        day.text = "기록 일수"
        day.textAlignment = .left
        day.font = UIFont(name: "AppleSDGothicNeo-Semibold", size: 18)
        dayCount.text = "4 일"
        dayCount.textAlignment = .right
        dayCount.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 18)

        totalClock.backgroundColor = .orange
        total.text = "전체 총합"
        total.textAlignment = .left
        total.font = UIFont(name: "AppleSDGothicNeo-Semibold", size: 18)
        totalCount.text = "6 개"
        totalCount.textAlignment = .right
        totalCount.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 18)
        
        averageClock.backgroundColor = .orange
        average.text = "전체 평균"
        average.textAlignment = .left
        average.font = UIFont(name: "AppleSDGothicNeo-Semibold", size: 18)
        averageCount.text = "1.5 개"
        averageCount.textAlignment = .right
        averageCount.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 18)
        
        
        self.view.addSubview(navigationBarArea)
        navigationBarArea.addSubview(backButton)
        navigationBarArea.addSubview(report)
        
        self.view.addSubview(weekControlArea)
        weekControlArea.addSubview(beforeArrow)
        weekControlArea.addSubview(afterArrow)
        weekControlArea.addSubview(period)
        
        self.view.addSubview(graphArea)
        
        self.view.addSubview(statisticsArea)
        statisticsArea.addSubview(dayClock)
        statisticsArea.addSubview(day)
        statisticsArea.addSubview(dayCount)
        statisticsArea.addSubview(totalClock)
        statisticsArea.addSubview(total)
        statisticsArea.addSubview(totalCount)
        statisticsArea.addSubview(averageClock)
        statisticsArea.addSubview(average)
        statisticsArea.addSubview(averageCount)
        
        
        navigationBarArea.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        report.translatesAutoresizingMaskIntoConstraints = false
        
        weekControlArea.translatesAutoresizingMaskIntoConstraints = false
        beforeArrow.translatesAutoresizingMaskIntoConstraints = false
        period.translatesAutoresizingMaskIntoConstraints = false
        afterArrow.translatesAutoresizingMaskIntoConstraints = false
        
        graphArea.translatesAutoresizingMaskIntoConstraints = false
        
        statisticsArea.translatesAutoresizingMaskIntoConstraints = false
        dayClock.translatesAutoresizingMaskIntoConstraints = false
        day.translatesAutoresizingMaskIntoConstraints = false
        dayCount.translatesAutoresizingMaskIntoConstraints = false
        totalClock.translatesAutoresizingMaskIntoConstraints = false
        total.translatesAutoresizingMaskIntoConstraints = false
        totalCount.translatesAutoresizingMaskIntoConstraints = false
        averageClock.translatesAutoresizingMaskIntoConstraints = false
        average.translatesAutoresizingMaskIntoConstraints = false
        averageCount.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            navigationBarArea.heightAnchor.constraint(equalToConstant: 50),
            navigationBarArea.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            navigationBarArea.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            navigationBarArea.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            
            backButton.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            backButton.leadingAnchor.constraint(equalTo: navigationBarArea.leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            
            report.centerXAnchor.constraint(equalTo: navigationBarArea.centerXAnchor),
            report.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            
            weekControlArea.topAnchor.constraint(equalTo: navigationBarArea.bottomAnchor, constant: 30),
            weekControlArea.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            weekControlArea.widthAnchor.constraint(equalToConstant: 220),
            weekControlArea.heightAnchor.constraint(equalToConstant: 30),
            
            beforeArrow.widthAnchor.constraint(equalToConstant: 30),
            beforeArrow.heightAnchor.constraint(equalToConstant: 30),
            beforeArrow.leadingAnchor.constraint(equalTo: weekControlArea.leadingAnchor),
            
            afterArrow.widthAnchor.constraint(equalToConstant: 30),
            afterArrow.heightAnchor.constraint(equalToConstant: 30),
            afterArrow.trailingAnchor.constraint(equalTo: weekControlArea.trailingAnchor),
            
            period.centerYAnchor.constraint(equalTo: weekControlArea.centerYAnchor),
            period.leadingAnchor.constraint(equalTo: beforeArrow.trailingAnchor),
            period.trailingAnchor.constraint(equalTo: afterArrow.leadingAnchor),
            
            graphArea.topAnchor.constraint(equalTo: weekControlArea.bottomAnchor, constant: 20),
            graphArea.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            graphArea.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            graphArea.heightAnchor.constraint(equalToConstant: 350),
            
            statisticsArea.topAnchor.constraint(equalTo: graphArea.bottomAnchor, constant: 30),
            statisticsArea.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            statisticsArea.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            statisticsArea.heightAnchor.constraint(equalToConstant: 84),
            
            dayClock.topAnchor.constraint(equalTo: statisticsArea.topAnchor),
            dayClock.leadingAnchor.constraint(equalTo: statisticsArea.leadingAnchor),
            dayClock.widthAnchor.constraint(equalToConstant: 20),
            dayClock.heightAnchor.constraint(equalToConstant: 20),
            
            day.centerYAnchor.constraint(equalTo: dayClock.centerYAnchor),
            day.leadingAnchor.constraint(equalTo: dayClock.trailingAnchor, constant: 10),
            
            dayCount.centerYAnchor.constraint(equalTo: day.centerYAnchor),
            dayCount.trailingAnchor.constraint(equalTo: statisticsArea.trailingAnchor),
            
            totalClock.topAnchor.constraint(equalTo: dayClock.bottomAnchor, constant: 10),
            totalClock.leadingAnchor.constraint(equalTo: statisticsArea.leadingAnchor),
            totalClock.widthAnchor.constraint(equalToConstant: 20),
            totalClock.heightAnchor.constraint(equalToConstant: 20),
            
            total.centerYAnchor.constraint(equalTo: totalClock.centerYAnchor),
            total.leadingAnchor.constraint(equalTo: totalClock.trailingAnchor, constant: 12),
            
            totalCount.centerYAnchor.constraint(equalTo: total.centerYAnchor),
            totalCount.trailingAnchor.constraint(equalTo: statisticsArea.trailingAnchor),
            
            averageClock.topAnchor.constraint(equalTo: totalClock.bottomAnchor, constant: 12),
            averageClock.leadingAnchor.constraint(equalTo: statisticsArea.leadingAnchor),
            averageClock.widthAnchor.constraint(equalToConstant: 20),
            averageClock.heightAnchor.constraint(equalToConstant: 20),
            
            average.centerYAnchor.constraint(equalTo: averageClock.centerYAnchor),
            average.leadingAnchor.constraint(equalTo: averageClock.trailingAnchor, constant: 10),
            
            averageCount.centerYAnchor.constraint(equalTo: average.centerYAnchor),
            averageCount.trailingAnchor.constraint(equalTo: statisticsArea.trailingAnchor)
        ])
        
    }

}

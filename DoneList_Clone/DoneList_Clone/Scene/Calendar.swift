//
//  CalendarVC.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/21.
//

import UIKit

extension Date {

    static var calendar: Calendar = {
        return Calendar(identifier: .gregorian)
    }()

    var weekday: Int {
        return Calendar.current.component(.weekday, from: self)
    }

    var firstDayOfTheMonth: Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year,.month], from: self))!
    }

    func isWeekend() -> Bool {
        return Date.calendar.isDateInWeekend(self)
    }
}


class CalendarVC: UIViewController {
    let calendar = Calendar(identifier: .gregorian)
    
    var calendarCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isScrollEnabled = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    var numOfDaysInMonth = [31,28,31,30,31,30,31,31,30,31,30,31]
    var currentMonthIndex: Int = 0
    var currentYear: Int = 0
    var presentMonthIndex = 0
    var presentYear = 0
    var todaysDate = 0
    var firstWeekDayOfMonth = 0   //(Sunday-Saturday 1-7)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCalendar()
        
        calendarCollectionView.backgroundColor = .white
        
        self.view.addSubview(calendarCollectionView)
        
        NSLayoutConstraint.activate([
            calendarCollectionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            calendarCollectionView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            calendarCollectionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            calendarCollectionView.heightAnchor.constraint(equalToConstant: self.view.frame.height * 0.5)
        ])
        
    }
    
    func setupCalendar() {
        print("setupCalendar")
        
        currentMonthIndex = Calendar.current.component(.month, from: Date())
        currentMonthIndex -= 1 // bcz apple calendar returns months starting from 1
        
        currentYear = Calendar.current.component(.year, from: Date())
        todaysDate = Calendar.current.component(.day, from: Date())
        
        
        print("numOfDaysThisMonth : \(numOfDaysInMonth[currentMonthIndex])" )
        print("\ncurrentYear : \(currentYear)")
        print("currentMonthIndex : \(currentMonthIndex)")
        
        firstWeekDayOfMonth = getFirstWeekDay()
        print("firstWeekDayOfMonth : \(firstWeekDayOfMonth)")
        
        //for leap years, make february month of 29 days
        if currentYear % 4 == 0 {
            numOfDaysInMonth[currentMonthIndex] = 29
        }
        //end
        presentMonthIndex = currentMonthIndex
        presentYear = currentYear
    }
    
    func getFirstWeekDay() -> Int {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        let date = formatter.date(from: "\(currentYear)-\(currentMonthIndex+1)-01")
        let day = date?.firstDayOfTheMonth.weekday
        
        return day!
    }
    
}

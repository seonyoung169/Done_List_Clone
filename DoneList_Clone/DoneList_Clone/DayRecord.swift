//
//  File.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/17.
//

import UIKit

class DayRecord: UIView {
    var date = UILabel()
    var bar = UIView()
    var count = UILabel()
    
    var barHeight = 20
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customInit()
        makeGraphLayout()
    }
    
    func customInit() -> Void {
        self.backgroundColor = .clear
        
        self.addSubview(date)
        self.addSubview(bar)
        self.addSubview(count)
        
        date.translatesAutoresizingMaskIntoConstraints = false
        bar.translatesAutoresizingMaskIntoConstraints = false
        count.translatesAutoresizingMaskIntoConstraints = false
        
        date.text = "7/29"
        date.textAlignment = .center
        date.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 15)
        
        bar.backgroundColor = .cyan
        bar.layer.cornerRadius = 10
        
        count.text = "0"
        count.textAlignment = .center
        count.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 16)
        
    }
    
    func makeGraphLayout(){
        NSLayoutConstraint.activate([
            date.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            date.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
            bar.bottomAnchor.constraint(equalTo: date.topAnchor, constant: -20),
            bar.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            bar.heightAnchor.constraint(equalToConstant: CGFloat(barHeight)),
            bar.widthAnchor.constraint(equalToConstant: 20),
            
            count.bottomAnchor.constraint(equalTo: bar.topAnchor, constant: -5),
            count.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func setDateDoneData(_ data : DayDone){
        date.text = "\(data.date.month)/\(data.date.day)"
        count.text = "\(data.done)"
        
        if data.done < 7{
            barHeight *= (data.done + 1)
        }else{
            barHeight = 160
        }
        makeGraphLayout()
    }
}

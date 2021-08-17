//
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/09.
//

import UIKit

class HomeVC: UIViewController {
    
    var navigationBarArea : UIView = UIView()
    var clockButton : UIImageView = UIImageView()
    var dateButton : UILabel = UILabel()
    var settingButton : UIImageView = UIImageView()
    
    var todayDone : UILabel = UILabel()
    var doneNumber : UILabel = UILabel()
    var message : UILabel = UILabel()
    
    var addDondButton : UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clockButton.backgroundColor = .black
        dateButton.text = "2021.08.12▾"
        dateButton.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 20)
        dateButton.textColor = .white
        settingButton.backgroundColor = .green
        
        todayDone.text = "오늘의 DONE"
        todayDone.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 25)
        todayDone.textColor = .white
        
        doneNumber.text = "0"
        doneNumber.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 45)
        doneNumber.textColor = .white
        
        message.text = "오늘 한 일을 추가해보세요!"
        message.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        message.textColor = .white
        
        addDondButton.backgroundColor = UIColor(red: 102/255, green: 192/255, blue: 245/255, alpha: 1)
        addDondButton.layer.cornerRadius = 50/2
        addDondButton.layer.shadowOpacity = 0.3
        addDondButton.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        addDondButton.layer.shadowRadius = 10
        addDondButton.layer.shadowOffset = CGSize(width: 0, height: 10)
        addDondButton.layer.masksToBounds = false
        
        configure()
        
        
    }
    
    func configure() -> Void {
        navigationBarArea.translatesAutoresizingMaskIntoConstraints = false
        clockButton.translatesAutoresizingMaskIntoConstraints = false
        dateButton.translatesAutoresizingMaskIntoConstraints = false
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        
        todayDone.translatesAutoresizingMaskIntoConstraints = false
        doneNumber.translatesAutoresizingMaskIntoConstraints = false
        message.translatesAutoresizingMaskIntoConstraints = false
        
        addDondButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(navigationBarArea)
        navigationBarArea.addSubview(clockButton)
        navigationBarArea.addSubview(dateButton)
        navigationBarArea.addSubview(settingButton)
        
        NSLayoutConstraint.activate([
            navigationBarArea.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            navigationBarArea.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            navigationBarArea.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            navigationBarArea.heightAnchor.constraint(equalToConstant: 50),
            
            clockButton.leadingAnchor.constraint(equalTo: navigationBarArea.leadingAnchor, constant: 10),
            clockButton.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            clockButton.heightAnchor.constraint(equalToConstant: 20),
            clockButton.widthAnchor.constraint(equalToConstant: 20),
            
            dateButton.centerXAnchor.constraint(equalTo: navigationBarArea.centerXAnchor),
            dateButton.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            
            settingButton.widthAnchor.constraint(equalToConstant: 20),
            settingButton.heightAnchor.constraint(equalToConstant: 20),
            settingButton.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            settingButton.trailingAnchor.constraint(equalTo: navigationBarArea.trailingAnchor, constant: -10)
        ])
        
        self.view.addSubview(todayDone)
        self.view.addSubview(doneNumber)
        self.view.addSubview(message)
        self.view.addSubview(addDondButton)
        
        NSLayoutConstraint.activate([
            todayDone.leadingAnchor.constraint(equalTo: navigationBarArea.leadingAnchor, constant: 10),
            todayDone.topAnchor.constraint(equalTo: navigationBarArea.bottomAnchor, constant: 20),
            
            doneNumber.centerYAnchor.constraint(equalTo: todayDone.centerYAnchor),
            doneNumber.trailingAnchor.constraint(equalTo: navigationBarArea.trailingAnchor, constant: -10),
            
            message.centerXAnchor.constraint(equalTo: navigationBarArea.centerXAnchor),
            message.topAnchor.constraint(equalTo: todayDone.bottomAnchor, constant: 80),
            
            addDondButton.widthAnchor.constraint(equalToConstant: 50),
            addDondButton.heightAnchor.constraint(equalToConstant: 50),
            addDondButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -15),
            addDondButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -40)
            
        ])
    }
    

}


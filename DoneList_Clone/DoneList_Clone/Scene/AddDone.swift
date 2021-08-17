//
//  AddDoneVC.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/17.
//

import UIKit

class AddDoneVC: UIViewController {
    
    var navigationBarArea : UIView = UIView()
    var backButton = UIImageView()
    var chooseDone = UILabel()
    
    var addNewDoneButton = UIView()
    var plusBox = UIImageView()
    var addNewDone = UILabel()
    
    var recentDone = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() -> Void {
        self.view.addSubview(navigationBarArea)
        navigationBarArea.addSubview(backButton)
        navigationBarArea.addSubview(chooseDone)
        
        self.view.addSubview(addNewDoneButton)
        addNewDoneButton.addSubview(plusBox)
        addNewDoneButton.addSubview(addNewDone)
        
        self.view.addSubview(recentDone)
        
        navigationBarArea.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        chooseDone.translatesAutoresizingMaskIntoConstraints = false
        
        addNewDoneButton.translatesAutoresizingMaskIntoConstraints = false
        plusBox.translatesAutoresizingMaskIntoConstraints = false
        addNewDone.translatesAutoresizingMaskIntoConstraints = false
        
        recentDone.translatesAutoresizingMaskIntoConstraints = false
        
        navigationBarArea.backgroundColor = .clear
        backButton.backgroundColor = .blue
        chooseDone.text = "한 일 선택하기"
        chooseDone.textColor = .white
        chooseDone.font = UIFont(name: "AppleSDGothicNeo-Semibold", size: 20)
        chooseDone.textAlignment = .center
        
        addNewDoneButton.backgroundColor = .white
        addNewDoneButton.layer.cornerRadius = 10
        
        plusBox.backgroundColor = .gray
        
        addNewDone.text = "새로운 한 일 추가하기"
        addNewDone.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        addNewDone.textAlignment = .left
        
        recentDone.text = "최근 한 일"
        recentDone.font = UIFont(name: "AppleSDGothicNeo-Light", size: 15)
        recentDone.textAlignment = .left
        recentDone.textColor = .white
        
        NSLayoutConstraint.activate([
            navigationBarArea.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            navigationBarArea.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            navigationBarArea.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            navigationBarArea.heightAnchor.constraint(equalToConstant: 50),
            
            backButton.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            backButton.leadingAnchor.constraint(equalTo: navigationBarArea.leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            
            chooseDone.centerXAnchor.constraint(equalTo: navigationBarArea.centerXAnchor),
            chooseDone.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            
            addNewDoneButton.topAnchor.constraint(equalTo: navigationBarArea.bottomAnchor, constant: 20),
            addNewDoneButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            addNewDoneButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            addNewDoneButton.heightAnchor.constraint(equalToConstant: 55),
            
            plusBox.centerYAnchor.constraint(equalTo: addNewDoneButton.centerYAnchor),
            plusBox.widthAnchor.constraint(equalToConstant: 35),
            plusBox.heightAnchor.constraint(equalToConstant: 35),
            plusBox.leadingAnchor.constraint(equalTo: addNewDoneButton.leadingAnchor, constant: 20),
            
            addNewDone.centerYAnchor.constraint(equalTo: addNewDoneButton.centerYAnchor),
            addNewDone.leadingAnchor.constraint(equalTo: plusBox.trailingAnchor, constant: 20),
            
            recentDone.topAnchor.constraint(equalTo: addNewDoneButton.bottomAnchor, constant: 50),
            recentDone.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 15)
        ])
        
    }

}

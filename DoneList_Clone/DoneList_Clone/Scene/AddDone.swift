//
//  AddDoneVC.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/21.
//

import UIKit

class AddDoneVC: UIViewController {
    var navigationBarArea : UIView = UIView()
    var backButton = UIImageView()
    var addDone = UILabel()
    
    var addNewDoneButton = UIView()
    var plusBox = UIImageView()
    var addNewDone = UILabel()
    
    var iconArea = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(navigationBarArea)
        navigationBarArea.addSubview(backButton)
        navigationBarArea.addSubview(addDone)
        
        self.view.addSubview(addNewDoneButton)
        addNewDoneButton.addSubview(plusBox)
        addNewDoneButton.addSubview(addNewDone)
        
        self.view.addSubview(iconArea)
        
        navigationBarArea.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        addDone.translatesAutoresizingMaskIntoConstraints = false
        
        addNewDoneButton.translatesAutoresizingMaskIntoConstraints = false
        plusBox.translatesAutoresizingMaskIntoConstraints = false
        addNewDone.translatesAutoresizingMaskIntoConstraints = false
        
        iconArea.translatesAutoresizingMaskIntoConstraints = false
        
        navigationBarArea.backgroundColor = .clear
        backButton.backgroundColor = .blue
        addDone.text = "한 일 추가하기"
        addDone.textColor = .black
        addDone.font = UIFont(name: "AppleSDGothicNeo-Semibold", size: 20)
        addDone.textAlignment = .center
        
        addNewDoneButton.backgroundColor = .white
        addNewDoneButton.layer.cornerRadius = 10
        addNewDoneButton.layer.shadowOpacity = 0.1
        addNewDoneButton.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        addNewDoneButton.layer.shadowRadius = 10
        addNewDoneButton.layer.shadowOffset = CGSize(width: 0, height: 1)
        addNewDoneButton.layer.masksToBounds = false
        
        plusBox.backgroundColor = .gray
        
        addNewDone.text = "새로운 한 일 추가하기"
        addNewDone.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        addNewDone.textAlignment = .left
        
        iconArea.backgroundColor = .white
        iconArea.layer.cornerRadius = 10
        
        NSLayoutConstraint.activate([
            navigationBarArea.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            navigationBarArea.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            navigationBarArea.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            navigationBarArea.heightAnchor.constraint(equalToConstant: 50),
            
            backButton.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            backButton.leadingAnchor.constraint(equalTo: navigationBarArea.leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            
            addDone.centerXAnchor.constraint(equalTo: navigationBarArea.centerXAnchor),
            addDone.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            
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
            
            iconArea.topAnchor.constraint(equalTo: addNewDoneButton.bottomAnchor, constant: 10),
            iconArea.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            iconArea.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            iconArea.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        for i in 0...3 {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            stackView.spacing = 7
            
            for _ in 0...6{
                let iconImageView = UIImageView()
                iconImageView.backgroundColor = .lightGray
                stackView.addArrangedSubview(iconImageView)
            }
        
            iconArea.addSubview(stackView)
            stackView.frame = CGRect(x: 7, y: 7 + 45 * i, width: Int(self.view.frame.width - 30.0 - 14.0), height: 180/4 - 14)
        }
        
        print("iconArea sub : \(iconArea.subviews)")
        
    }
    
}

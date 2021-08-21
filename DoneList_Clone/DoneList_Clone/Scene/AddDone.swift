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
    var confirmButton = UIImageView()
    
    var addNewDoneButton = UIView()
    var plusBox = UIImageView()
    var doneTextField = UITextField()
    
    var iconArea = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(navigationBarArea)
        navigationBarArea.addSubview(backButton)
        navigationBarArea.addSubview(addDone)
        navigationBarArea.addSubview(confirmButton)
        
        self.view.addSubview(addNewDoneButton)
        addNewDoneButton.addSubview(plusBox)
        addNewDoneButton.addSubview(doneTextField)
        
        self.view.addSubview(iconArea)
        
        navigationBarArea.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        addDone.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        
        addNewDoneButton.translatesAutoresizingMaskIntoConstraints = false
        plusBox.translatesAutoresizingMaskIntoConstraints = false
        doneTextField.translatesAutoresizingMaskIntoConstraints = false
        
        iconArea.translatesAutoresizingMaskIntoConstraints = false
        
        navigationBarArea.backgroundColor = .clear
        backButton.backgroundColor = .blue
        addDone.text = "한 일 추가하기"
        addDone.textColor = .black
        addDone.font = UIFont(name: "AppleSDGothicNeo-Semibold", size: 20)
        addDone.textAlignment = .center
        confirmButton.backgroundColor = .green
        
        addNewDoneButton.backgroundColor = .white
        addNewDoneButton.layer.cornerRadius = 10
        addNewDoneButton.layer.shadowOpacity = 0.1
        addNewDoneButton.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        addNewDoneButton.layer.shadowRadius = 10
        addNewDoneButton.layer.shadowOffset = CGSize(width: 0, height: 1)
        addNewDoneButton.layer.masksToBounds = false
        
        plusBox.backgroundColor = .gray
        
        doneTextField.placeholder = "오늘은 어떤 일을 하셨나요?"
        doneTextField.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        doneTextField.textAlignment = .left
        doneTextField.becomeFirstResponder()
        
        
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
            
            confirmButton.centerYAnchor.constraint(equalTo: navigationBarArea.centerYAnchor),
            confirmButton.trailingAnchor.constraint(equalTo: navigationBarArea.trailingAnchor, constant: -10),
            confirmButton.widthAnchor.constraint(equalToConstant: 40),
            confirmButton.heightAnchor.constraint(equalToConstant: 40),
            
            addNewDoneButton.topAnchor.constraint(equalTo: navigationBarArea.bottomAnchor, constant: 20),
            addNewDoneButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            addNewDoneButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            addNewDoneButton.heightAnchor.constraint(equalToConstant: 55),
            
            plusBox.centerYAnchor.constraint(equalTo: addNewDoneButton.centerYAnchor),
            plusBox.widthAnchor.constraint(equalToConstant: 35),
            plusBox.heightAnchor.constraint(equalToConstant: 35),
            plusBox.leadingAnchor.constraint(equalTo: addNewDoneButton.leadingAnchor, constant: 20),
            
            doneTextField.centerYAnchor.constraint(equalTo: addNewDoneButton.centerYAnchor),
            doneTextField.leadingAnchor.constraint(equalTo: plusBox.trailingAnchor, constant: 20),
            
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
        
        
    }
    
}

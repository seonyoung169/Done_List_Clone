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
    
    var recentDoneTableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recentDoneTableView.delegate = self
        recentDoneTableView.dataSource = self
        recentDoneTableView.register(RecentDoneCell.self, forCellReuseIdentifier: RecentDoneCell.cellID)
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
        
        self.view.addSubview(recentDoneTableView)
        
        navigationBarArea.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        chooseDone.translatesAutoresizingMaskIntoConstraints = false
        
        addNewDoneButton.translatesAutoresizingMaskIntoConstraints = false
        plusBox.translatesAutoresizingMaskIntoConstraints = false
        addNewDone.translatesAutoresizingMaskIntoConstraints = false
        
        recentDone.translatesAutoresizingMaskIntoConstraints = false
        
        recentDoneTableView.translatesAutoresizingMaskIntoConstraints = false
        
        navigationBarArea.backgroundColor = .clear
        backButton.backgroundColor = .blue
        chooseDone.text = "한 일 선택하기"
        chooseDone.textColor = .white
        chooseDone.font = UIFont(name: "AppleSDGothicNeo-Semibold", size: 20)
        chooseDone.textAlignment = .center
        
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
        
        recentDone.text = "최근 한 일"
        recentDone.font = UIFont(name: "AppleSDGothicNeo-Light", size: 15)
        recentDone.textAlignment = .left
        recentDone.textColor = .white
        
        recentDoneTableView.separatorStyle = .none
        recentDoneTableView.layer.cornerRadius = 10
        recentDoneTableView.backgroundColor = .clear
        
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
            recentDone.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            
            recentDoneTableView.topAnchor.constraint(equalTo: recentDone.bottomAnchor, constant: 20),
            recentDoneTableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            recentDoneTableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            recentDoneTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
        ])
        
    }

}

extension AddDoneVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RecentDoneCell.cellID) as! RecentDoneCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
}

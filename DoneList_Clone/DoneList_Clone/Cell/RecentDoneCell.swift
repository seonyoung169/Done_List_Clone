//
//  RecentDoneCell.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/08/20.
//

import UIKit

class RecentDoneCell: UITableViewCell {
    
    static let cellID = "RecentDondCell"
    
    var bottomView = UIView()
    var icon = UIImageView()
    var doneName = UILabel()
    var deleteButton = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func configure() -> Void {
        self.backgroundColor = .clear
        
        self.addSubview(bottomView)
        bottomView.addSubview(icon)
        bottomView.addSubview(doneName)
        bottomView.addSubview(deleteButton)
        
        bottomView.backgroundColor = .white
        bottomView.layer.cornerRadius = 10
        bottomView.layer.shadowOpacity = 0.1
        bottomView.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        bottomView.layer.shadowRadius = 10
        bottomView.layer.shadowOffset = CGSize(width: 0, height: 1)
        bottomView.layer.masksToBounds = false
        
        icon.backgroundColor = .green
        doneName.text = "사랑해요 김연경 김희진~~"
        deleteButton.backgroundColor = .red
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        icon.translatesAutoresizingMaskIntoConstraints = false
        doneName.translatesAutoresizingMaskIntoConstraints = false
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            bottomView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
            icon.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
            icon.widthAnchor.constraint(equalToConstant: 35),
            icon.heightAnchor.constraint(equalToConstant: 35),
            icon.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor),
            
            doneName.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 20),
            doneName.trailingAnchor.constraint(equalTo: deleteButton.leadingAnchor, constant: 20),
            doneName.centerYAnchor.constraint(equalTo: icon.centerYAnchor),
            
            deleteButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20),
            deleteButton.widthAnchor.constraint(equalToConstant: 25),
            deleteButton.heightAnchor.constraint(equalToConstant: 25),
            deleteButton.centerYAnchor.constraint(equalTo: doneName.centerYAnchor)
        ])
    }
}

//
//  TaskCell.swift
//  DoneList_Clone
//
//  Created by SEONYOUNG LEE on 2021/11/23.
//

import UIKit

class TaskCell: UITableViewCell {
    static let cellID = "TaskCell"
    
    var icon = UIImageView()
    var name = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure() {
        self.addSubview(icon)
        self.addSubview(name)
        
        icon.backgroundColor = .yellow
        name.text = "task name"
        icon.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            icon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 30),
            icon.heightAnchor.constraint(equalToConstant: 30),
            icon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            
            name.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 20),
            name.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

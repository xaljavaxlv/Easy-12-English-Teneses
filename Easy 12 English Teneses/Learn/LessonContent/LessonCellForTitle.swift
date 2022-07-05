//
//  LessonCellForTitle.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 30.12.2021.
//

import UIKit




class LessonCellForTitle: UITableViewCell {
    
    var title: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createTitleLabel()

        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTitleLabel() {
     
        title = UILabel.init()
        contentView.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        title.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        title.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    }

}

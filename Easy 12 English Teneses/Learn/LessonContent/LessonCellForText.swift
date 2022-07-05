//
//  LessonCellForText.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 30.12.2021.
//

import UIKit




class LessonCellForText: UITableViewCell {
    
    var text: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createTextLabel()

        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTextLabel() {
     
        text = UILabel.init()
        contentView.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        text.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        text.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        text.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    }
    
    
}

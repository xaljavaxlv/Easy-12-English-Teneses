//
//  CellForNextStepButton.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 30.12.2021.
//

import UIKit

class CellForNextStepButton: UITableViewCell {

    var button: UIButton!


    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createButton()

        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createButton() {
        button = UIButton.init()
        contentView.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        button.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        button.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -60).isActive = true

    }
    
}

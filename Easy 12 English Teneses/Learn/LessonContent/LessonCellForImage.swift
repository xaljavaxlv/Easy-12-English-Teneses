//
//  LessonVCCell.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 28.12.2021.
//

import UIKit

class LessonCellForImage: UITableViewCell {

    var image: UIImageView!


    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createImage()

        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createImage() {
         image = UIImageView.init()
        contentView.addSubview(image)
        image.backgroundColor = .blue
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true  
    }
    
}

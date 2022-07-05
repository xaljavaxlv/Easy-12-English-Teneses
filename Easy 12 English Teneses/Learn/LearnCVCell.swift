//
//  LearnCVCell.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 21.12.2021.
//

import UIKit

class LearnCVCell: UICollectionViewCell {
    
    @IBOutlet weak var cvTitle: UILabel!
    
    func title(currentCategory: Teneses) {
        cvTitle.text = currentCategory.rawValue
    }
  
}

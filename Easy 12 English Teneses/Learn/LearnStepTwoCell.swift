//
//  LearnStepTwoCell.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 22.12.2021.
//

import UIKit

class LearnStepTwoCell: UICollectionViewCell {
    @IBOutlet weak var LearnStepTwoLessonTitle: UILabel!
    
    func title(setNameForButton: String) {
        LearnStepTwoLessonTitle.text = setNameForButton
    }
}

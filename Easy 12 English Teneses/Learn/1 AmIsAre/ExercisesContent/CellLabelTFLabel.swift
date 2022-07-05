//
//  Cell Text + TF + Text.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 31.12.2021.
//

import UIKit


class CellLabelTFLabel: UITableViewCell, UITextFieldDelegate {
    
    var labelOne: [UILabel] = []
    var textField: UITextField?
    var labelTwo: [UILabel] = []
    var firstWorldInRow: UILabel!
    var firstTFieldInRow: UITextField?
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func createLabelOne(string: [String]) {
        
        
        for index in 0...string.count - 1 {
            
            let currentLabel = UILabel.init()
            let textForLabel = string[index]
            currentLabel.text = textForLabel
            labelOne.append(currentLabel)
            contentView.addSubview(labelOne[index])
            
            let textWidth = labelOne[index].intrinsicContentSize.width
            let textHeight = labelOne[index].intrinsicContentSize.height
            labelOne[index].frame.size.width = textWidth
            labelOne[index].frame.size.height = textHeight
            
            if index == 0 {
                firstWorldInRow = labelOne[0]
                labelOne[index].frame.origin.x = contentView.frame.origin.x + 20
                labelOne[index].frame.origin.y = contentView.frame.origin.y
                
            } else {
                
                let textWidthBefore = labelOne[index - 1].intrinsicContentSize.width
                let xPositionForCurrentTextLabel = labelOne[index - 1].frame.origin.x + textWidthBefore + 5 + textWidth
                let xForRightSide = UIScreen.main.bounds.width - 20
                let distanceBetweenCurrentLabelAndRightSide = xForRightSide - xPositionForCurrentTextLabel
                
                
                if distanceBetweenCurrentLabelAndRightSide > 0 {
                    
                    labelOne[index].frame.origin.x = labelOne[index - 1].frame.origin.x + textWidthBefore + 5
                    labelOne[index].frame.origin.y = labelOne[index - 1].frame.origin.y
                    
                }
                else {
                    
                    labelOne[index].frame.origin.x = firstWorldInRow.frame.origin.x
                    labelOne[index].frame.origin.y = firstWorldInRow.frame.origin.y + 30
                    firstWorldInRow = labelOne[index]
                    
                }
            }
        }
        
        
    }
    
    
    func createTextField() {
        textField = UITextField.init()
        contentView.addSubview(textField!)
        textField?.frame.size.width = 50
        textField?.frame.size.height = 30
        textField?.standartSettingsForTextField()
        
        
        let xPositionForCurrentTextField = labelOne.last!.frame.origin.x + labelOne.last!.frame.size.width + 4 + (textField?.frame.size.width)!
        
        let xForRightSide = UIScreen.main.bounds.width - 20
        let distanceBetweenCurrentTFieldAndRightSide = xForRightSide - xPositionForCurrentTextField
        
        
        if distanceBetweenCurrentTFieldAndRightSide > 0 {
            
            textField?.frame.origin.x = (labelOne.last?.frame.origin.x)! + (labelOne.last?.frame.size.width)! + 4
            textField?.frame.origin.y = (labelOne.last?.frame.origin.y)! - 5 // желательно высчитать динамически
        }
        else {
            
            textField?.frame.origin.x = firstWorldInRow.frame.origin.x
            textField?.frame.origin.y = firstWorldInRow.frame.origin.y + 30
            firstTFieldInRow = textField
            
        }
        
    }
    
    
    func createLabelTwo(string: [String]) {
        
        
        
        for index in 0...string.count - 1 {
            
            let currentLabel = UILabel.init()
            let textForLabel = string[index]
            currentLabel.text = textForLabel
            labelTwo.append(currentLabel)
            contentView.addSubview(labelTwo[index])
            
            let textWidth = labelTwo[index].intrinsicContentSize.width
            let textHeight = labelTwo[index].intrinsicContentSize.height
            let xForRightSide = UIScreen.main.bounds.width - 20
            labelTwo[index].frame.size.width = textWidth
            labelTwo[index].frame.size.height = textHeight
            
            
            
            if index == 0 {
                
                let xPositionForCurrentLabel = textField!.frame.origin.x + textField!.frame.size.width + 4 + labelTwo[index].intrinsicContentSize.width
                let distanceBetweenCurrentLabelAndRightSide = xForRightSide - xPositionForCurrentLabel
                
                
                if distanceBetweenCurrentLabelAndRightSide > 0 {
                    
                    labelTwo[index].frame.origin.x = textField!.frame.origin.x + textField!.frame.size.width + 4
                    labelTwo[index].center.y = textField!.center.y
                    
                } else {
                    
                    labelTwo[index].frame.origin.x = firstWorldInRow.frame.origin.x
                    labelTwo[index].frame.origin.y = firstWorldInRow.frame.origin.y + 30
                    firstWorldInRow = labelTwo[index]
                    
                }
            }
            else {
                
                let xPositionForCurrentLabel = labelTwo[index - 1].frame.origin.x + labelTwo[index - 1].frame.size.width + 5 //+ labelTwo[index - 1].intrinsicContentSize.width
                let distanceBetweenCurrentLabelAndRightSide = xForRightSide - xPositionForCurrentLabel - labelTwo[index - 1].intrinsicContentSize.width
                
                if distanceBetweenCurrentLabelAndRightSide > 0 {
                    
                    labelTwo[index].frame.origin.x = xPositionForCurrentLabel
                    labelTwo[index].frame.origin.y = labelTwo[index - 1].frame.origin.y
                    
                }
                else {
                    
                    if firstTFieldInRow == nil {
                        labelTwo[index].frame.origin.x = firstWorldInRow.frame.origin.x
                        labelTwo[index].frame.origin.y = firstWorldInRow.frame.origin.y + 30
                        firstWorldInRow = labelTwo[index]
                    }
                    else {
                        
                        labelTwo[index].frame.origin.x = firstTFieldInRow!.frame.origin.x
                        labelTwo[index].center.y = firstTFieldInRow!.center.y + 30
                        firstWorldInRow = labelTwo[index]
                        firstTFieldInRow = nil
                        
                    }
                }
            }
        }
    }
    
    
    func heightForCurrentCell() -> CGFloat{
        
        let yForHightPointOfCell = labelOne[0].frame.origin.y
        let yForBottomPointOfCell = firstWorldInRow.frame.origin.y + firstWorldInRow.intrinsicContentSize.height
        let heightForCell = yForBottomPointOfCell - yForHightPointOfCell
        
        return heightForCell
    }
    
    
    
}

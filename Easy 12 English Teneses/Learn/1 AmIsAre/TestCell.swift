//
//  TestCell.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 25.12.2021.
//

import UIKit
// просто учебный файл. можно удалить
class TestCell: UITableViewCell {
    
    var label: UILabel!
    var textField: UITextField!
    static let height: CGFloat = 50
    static var textForLabel: String?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        createLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createLabel() {
        label = UILabel.init()
        label.backgroundColor = .blue
        label.frame.size.width = (UIScreen.main.bounds.width - 40) / 3
        label.frame.size.height = 30
        label.frame.origin.x = 20
        label.center.y = TestCell.height / 2
        contentView.addSubview(label)
        
        label.numberOfLines = 0
        //label.text = textForLabel
        //label.frame.size.height = text.getSizeText(width: label.frame.width, font: label.font!).height // считаем в основном VC
    }
}

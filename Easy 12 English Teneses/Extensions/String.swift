//
//  String.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 25.12.2021.
//

import UIKit

// функция автоматической высоты текста
extension String {
    func getSizeText(width: CGFloat, font: UIFont) -> CGSize {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil)
        return boundingBox.size
    }
}

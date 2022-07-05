//
//  CommonExtensions.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 31.12.2021.
//

import UIKit



extension String {
    
    func getSizeTextOneLine(font: UIFont) -> CGSize {
            let fontAttributes = [NSAttributedString.Key.font: font]
            let sizeText = (self as NSString).size(withAttributes: fontAttributes as [NSAttributedString.Key : Any])
            return sizeText
        }
    
}



extension UIFont {


    func textWidth(s: String) -> CGFloat
    {
        return s.size(withAttributes: [NSAttributedString.Key.font: self]).width
    }

}



extension String {
    var htmlToAttributedString: NSAttributedString?
    {
        guard let data = data(using: .utf8) else {return nil}
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        }
        catch {
            return nil
        }
    }
}



extension UITextField: UITextFieldDelegate {
    func standartSettingsForTextField() {
        let leftView = UIView.init()
        leftView.frame.size.width = 6
        self.leftView = leftView
        self.leftViewMode = .always
        let rightView = UIView.init()
        rightView.frame.size.width = leftView.frame.size.width
        self.rightView = rightView
        self.rightViewMode = .always
        
        self.backgroundColor = .white
        self.layer.cornerRadius = 6
        self.layer.borderWidth = 1
        //self.delegate = self
    }
    
}

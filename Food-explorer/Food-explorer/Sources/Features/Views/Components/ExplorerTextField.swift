//
//  ExplorerTextField.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 06/12/24.
//

import UIKit

class ExplorerTextField: UITextField {
    let textPadding = UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16)
    
    init(placeholderText: String) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        keyboardType = .default
        backgroundColor = .dark900
        textColor = .light500
        font = .roboto(.regular, size: 16)
        borderStyle = .roundedRect
        let placeholderAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.roboto(.regular, size: 16),
            .foregroundColor: UIColor.light500
        ]
        attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: placeholderAttributes)
        
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

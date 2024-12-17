//
//  ExplorerButton.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 07/12/24.
//

import UIKit

class ExplorerButton: UIButton {
    let buttonText: String
    let onlyText: Bool
    
    init(buttonText: String, onlyText: Bool = false) {
        self.buttonText = buttonText
        self.onlyText = onlyText
        
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        
        if (!self.onlyText) {
            configuration = setDefaultButtonConfig()
        } else {
            configuration = setOnlyTextButtonConfig()
        }
        
        configuration?.attributedTitle = setTitleAttributes()
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setDefaultButtonConfig() -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        
        buttonConfiguration.title = self.buttonText
        buttonConfiguration.baseBackgroundColor = .tomato100
        buttonConfiguration.baseForegroundColor = .light100
        
        buttonConfiguration.contentInsets = NSDirectionalEdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0)
        
        return buttonConfiguration
    }
    
    private func setOnlyTextButtonConfig() -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        
        buttonConfiguration.title = self.buttonText
        buttonConfiguration.baseBackgroundColor = .clear
        buttonConfiguration.baseForegroundColor = .light100
        
        buttonConfiguration.contentInsets = NSDirectionalEdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0)
        
        return buttonConfiguration
    }
    
    private func setTitleAttributes() -> AttributedString {
        let font = UIFont.poppins(.medium, size: 14)
        
        let attributedTitle = NSAttributedString(string: buttonText, attributes: [.font: font])
        
        return AttributedString(attributedTitle)
    }
    
    private func setConstraints() {
        widthAnchor.constraint(equalToConstant: 316).isActive = true
        heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
}

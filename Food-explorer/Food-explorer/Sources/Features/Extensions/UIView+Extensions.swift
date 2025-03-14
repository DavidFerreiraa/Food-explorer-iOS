//
//  UIView+Extensions.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import Foundation
import UIKit

extension UIView {
    func setConstraintsToParent() {
        guard let parent = superview else { return }
                
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
        ])
    }
}

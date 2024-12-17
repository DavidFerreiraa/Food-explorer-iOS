//
//  SplashView.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 16/12/24.
//

import Foundation
import UIKit

class SplashView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var logoView: LogoView = LogoView(logoSize: 38)
    
    private func setupUI() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        addSubview(logoView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}


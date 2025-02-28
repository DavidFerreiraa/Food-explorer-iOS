//
//  HomeView.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 28/02/25.
//

import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}

//
//  Logo.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import UIKit

class LogoView: UIView {
    let logoSize: CGFloat
    
    init(logoSize: CGFloat) {
        self.logoSize = logoSize
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        
        setupUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var logoImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = .appIconStatic
        return view
    }()
    
    private lazy var logoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "food explorer"
        label.font = .roboto(.bold, size: self.logoSize)
        label.textColor = .light100
        return label
    }()
    
    private func setupUI() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        addSubview(logoImageView)
        addSubview(logoLabel)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            logoImageView.topAnchor.constraint(equalTo: topAnchor),
            logoImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: self.logoSize + 6),
            logoImageView.heightAnchor.constraint(equalToConstant: self.logoSize + 6),
            
            logoLabel.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 12),
            logoLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}

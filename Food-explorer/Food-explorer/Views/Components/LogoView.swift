//
//  Logo.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import UIKit

class LogoView: UIStackView {
    let logoSize: CGFloat
    init(logoSize: CGFloat) {
        self.logoSize = logoSize
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        axis = .horizontal
        spacing = 8
        distribution = .fill
        
        addArrangedSubview(logoImageView)
        addArrangedSubview(logoLabel)
        
        setConstraints()
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
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: self.logoSize + 6),
            logoImageView.heightAnchor.constraint(equalToConstant: self.logoSize + 6),
        ])
    }
}

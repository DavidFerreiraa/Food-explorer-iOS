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
    
    private lazy var headerView: HeaderView = {
        let headerView = HeaderView()
        return headerView
    }()
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        addSubview(headerView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topAnchor),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 104) // Altura fixa
        ])
    }
}

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
    
    private lazy var bannerImageView: UIImageView = {
        let bannerImageView = UIImageView(image: UIImage(named: "banner"))
        bannerImageView.translatesAutoresizingMaskIntoConstraints = false
        bannerImageView.contentMode = .scaleAspectFit
        bannerImageView.clipsToBounds = true
        return bannerImageView
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
        addSubview(bannerImageView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topAnchor),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerView.bottomAnchor.constraint(equalTo: topAnchor, constant: 104),
            
            bannerImageView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 16),
            bannerImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            bannerImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6)
        ])
    }
}

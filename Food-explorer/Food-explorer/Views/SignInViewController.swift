//
//  ViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import UIKit

class SignInViewController: UIViewController {
    
    private lazy var logoView: LogoView = LogoView(logoSize: 38)
    
    private lazy var backgroundView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [logoView])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isLayoutMarginsRelativeArrangement = true
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 158, leading: 48, bottom: 0, trailing: 48)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
    }
    
    private func setConstraints() {
        backgroundView.setConstraintsToParent(view)
        
        NSLayoutConstraint.activate([
            logoView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 164),
        ])
    }
}


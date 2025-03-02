//
//  HomeViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 28/02/25.
//

import UIKit

class HomeViewController: UIViewController {
    let contentView: HomeView
    
    init(contentView: HomeView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        view.addSubview(contentView)
        view.backgroundColor = .dark100
    }
    
    private func setConstraints() {
        self.setupContentViewToViewController(contentView: contentView)
    }
}


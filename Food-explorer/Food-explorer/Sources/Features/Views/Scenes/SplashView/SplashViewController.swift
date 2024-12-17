//
//  SplashViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 16/12/24.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    let contentView: SplashView
    weak var delegate: SplashFlowDelegate?
    
    init(contentView: SplashView, delegate: SplashFlowDelegate) {
        self.contentView = contentView
        self.delegate = delegate
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        startApp()
    }
    
    private func setup() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(contentView)
        self.navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .dark100
    }
    
    private func setConstraints() {
        self.setupContentViewToViewController(contentView: contentView)
    }
    
    private func startApp() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.delegate?.navigateToApp()
        }
    }
}


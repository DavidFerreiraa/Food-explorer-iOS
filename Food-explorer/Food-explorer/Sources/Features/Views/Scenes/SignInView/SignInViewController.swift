//
//  ViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import UIKit

class SignInViewController: UIViewController {
    
    let contentView: SignInView
    weak var delegate: SignInFlowDelegate?
    
    init(contentView: SignInView, delegate: SignInFlowDelegate) {
        self.contentView = contentView
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
        
        contentView.didTapExplorerTextButton = { [weak self] in
            self?.delegate?.navigateToSignUp()
        }
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


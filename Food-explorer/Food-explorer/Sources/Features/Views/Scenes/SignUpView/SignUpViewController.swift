//
//  SignUpViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 08/12/24.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    
    let contentView: SignUpView
    weak var delegate: SignUpFlowDelegate?
    
    init(contentView: SignUpView, delegate: SignUpFlowDelegate) {
        self.contentView = contentView
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
        
        contentView.didTapExplorerTextButton = { [weak self] in
            self?.delegate?.navigateToSignIn()
        }
        
        hideKeyboardWhenTappedAround()
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

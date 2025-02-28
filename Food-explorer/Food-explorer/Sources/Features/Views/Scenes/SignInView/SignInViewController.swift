//
//  ViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import UIKit

class SignInViewController: UIViewController {
    
    let contentView: SignInView
    let viewModel: SignInViewModel = SignInViewModel()
    weak var delegate: SignInFlowDelegate?
    
    init(contentView: SignInView, delegate: SignInFlowDelegate) {
        self.contentView = contentView
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
        
        contentView.didTapExplorerTextButton = { [weak self] in
            self?.delegate?.navigateToSignUp()
        }
        
        contentView.didTapExplorerButton = { [weak self] in
            contentView.getFormData { [weak self] (email, password) in
                self?.viewModel.signIn(email: email, password: password)
            }
        }
        
        viewModel.onSignInSuccess = {
            print("Sucesso")
            let alert = UIAlertController(title: "Success", message: "Session created successfully", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
        }
        
        viewModel.onSignInFailure = { [weak self] error in
            let alert = UIAlertController(title: "Erro", message: error, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self?.present(alert, animated: true)
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


//
//  ViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 05/12/24.
//

import UIKit

class SignInViewController: UIViewController {
    
    private lazy var backgroundView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [logoView, inputWrapperView, UIView()])
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isLayoutMarginsRelativeArrangement = true
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 164, leading: 0, bottom: 0, trailing: 0)
        view.alignment = .center
        view.distribution = .fill
        view.spacing = 73
        return view
    }()
    
    private lazy var logoView: LogoView = LogoView(logoSize: 38)
    
    private lazy var inputWrapperView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [explorerEmailTextFieldWithLabelStackView, explorerPasswordTextFieldWithLabelStackView, explorerButton, explorerOnlyTextButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 32
        view.distribution = .fillProportionally
        view.alignment = .center

        return view
    }()
    
    private lazy var explorerEmailTextField: ExplorerTextField = {
        let textField = ExplorerTextField(placeholderText: "Exemplo: exemplo@exemplo.com")
        textField.center = view.center
        return textField
    }()
    
    private lazy var explorerPasswordTextField: ExplorerTextField = {
        let textField = ExplorerTextField(placeholderText: "No mínimo 6 caracteres")
        textField.center = view.center
        return textField
    }()
    
    private lazy var explorerEmailTextFieldWithLabelStackView: ExplorerTextFieldWithLabelStackView = {
        let view = ExplorerTextFieldWithLabelStackView(labelText: "Email", textField: explorerEmailTextField)
        return view
    }()
    
    private lazy var explorerPasswordTextFieldWithLabelStackView: ExplorerTextFieldWithLabelStackView = {
        let view = ExplorerTextFieldWithLabelStackView(labelText: "Senha", textField: explorerPasswordTextField)
        return view
    }()
    
    private lazy var explorerButton: ExplorerButton = {
        let button = ExplorerButton(buttonText: "Entrar")
        return button
    }()
    
    private lazy var explorerOnlyTextButton: ExplorerButton = {
        let button = ExplorerButton(buttonText: "Criar uma conta", onlyText: true)
        return button
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
        logoView.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
}


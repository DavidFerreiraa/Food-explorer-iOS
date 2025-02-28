//
//  SignUpView.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 10/12/24.
//

import Foundation
import UIKit

class SignUpView: UIView {
    var didTapExplorerTextButton: (() -> Void?)?
    var didTapExplorerButton: (() -> Void?)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var logoView: LogoView = LogoView(logoSize: 38)
    
    private lazy var inputWrapperView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [explorerNomeTextFieldWithLabelStackView, explorerEmailTextFieldWithLabelStackView, explorerPasswordTextFieldWithLabelStackView, explorerButton, explorerOnlyTextButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 32
        view.distribution = .fillProportionally
        view.alignment = .center

        return view
    }()
    
    private lazy var explorerEmailTextField: ExplorerTextField = {
        let textField = ExplorerTextField(placeholderText: "Exemplo: exemplo@exemplo.com")
        textField.center = center
        return textField
    }()
    
    private lazy var explorerPasswordTextField: ExplorerTextField = {
        let textField = ExplorerTextField(placeholderText: "No mínimo 6 caracteres")
        textField.center = center
        return textField
    }()
    
    private lazy var explorerNomeTextField: ExplorerTextField = {
        let textField = ExplorerTextField(placeholderText: "Exemplo: Maria da Silva")
        textField.center = center
        return textField
    }()
    
    private lazy var explorerNomeTextFieldWithLabelStackView: ExplorerTextFieldWithLabelStackView = {
        let view = ExplorerTextFieldWithLabelStackView(labelText: "Nome", textField: explorerNomeTextField)
        return view
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
        let button = ExplorerButton(buttonText: "Criar conta")
        button.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
        return button
    }()
    
    private lazy var explorerOnlyTextButton: ExplorerButton = {
        let button = ExplorerButton(buttonText: "Já tenho uma conta", onlyText: true)
        button.addTarget(self, action: #selector(didTapText), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func didTapText() {
        Task {
            didTapExplorerTextButton?()
        }
    }
    
    @objc
    private func didTapSignUp() {
        Task {
            didTapExplorerButton?()
        }
    }
    
    func getFormData(_ completion: @escaping (_ name: String, _ email: String, _ password: String) -> Void) {
        let name = explorerNomeTextField.text ?? ""
        let email = explorerEmailTextField.text ?? ""
        let password = explorerPasswordTextField.text ?? ""
        completion(name, email, password)
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        addSubview(logoView)
        addSubview(inputWrapperView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoView.heightAnchor.constraint(equalToConstant: 44),
//            logoView.widthAnchor.constraint(equalToConstant: 280),
            logoView.topAnchor.constraint(equalTo: topAnchor, constant: 158),
            logoView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 65),
            
            inputWrapperView.heightAnchor.constraint(equalToConstant: 424),
            inputWrapperView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 73),
            inputWrapperView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 65),
            inputWrapperView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            
            explorerNomeTextFieldWithLabelStackView.leadingAnchor.constraint(equalTo: inputWrapperView.leadingAnchor),
            explorerNomeTextFieldWithLabelStackView.trailingAnchor.constraint(equalTo: inputWrapperView.trailingAnchor),
            
            explorerEmailTextFieldWithLabelStackView.leadingAnchor.constraint(equalTo: inputWrapperView.leadingAnchor),
            explorerEmailTextFieldWithLabelStackView.trailingAnchor.constraint(equalTo: inputWrapperView.trailingAnchor),
            
            explorerPasswordTextFieldWithLabelStackView.leadingAnchor.constraint(equalTo: inputWrapperView.leadingAnchor),
            explorerPasswordTextFieldWithLabelStackView.trailingAnchor.constraint(equalTo: inputWrapperView.trailingAnchor),
        ])
    }

}

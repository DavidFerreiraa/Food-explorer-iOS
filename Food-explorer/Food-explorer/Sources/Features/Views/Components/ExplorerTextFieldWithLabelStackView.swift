//
//  ExplorerLabelWrapperStackView.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 06/12/24.
//

import UIKit

class ExplorerTextFieldWithLabelStackView: UIStackView {
    let textField: ExplorerTextField
    let labelText: String
    init(labelText: String, textField: ExplorerTextField) {
        self.textField = textField
        self.labelText = labelText
        
        super.init(frame: .zero)
        axis = .vertical
        spacing = 8
        alignment = .leading
        distribution = .fill
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = self.labelText
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .roboto(.regular, size: 16)
        label.textColor = .light400
        return label
    }()
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        addArrangedSubview(label)
        addArrangedSubview(textField)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            textField.heightAnchor.constraint(equalToConstant: 44),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 16)
        ])
    }
}

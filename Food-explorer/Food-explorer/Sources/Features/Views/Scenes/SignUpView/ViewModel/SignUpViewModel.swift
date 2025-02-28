//
//  SignUpViewModel.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 26/02/25.
//

import Foundation

enum SignUpError: Error {
    case emptyFields
}

class SignUpViewModel {
    var onSignUpSuccess: (() -> Void)?
    var onSignUpFailure: ((String) -> Void)?
    
    func signUp(name: String, email: String, password: String) {
        guard !name.isEmpty, !email.isEmpty, !password.isEmpty else {
            onSignUpFailure?("Preencha todos os campos.")
            return
        }
        
        UserService.shared.createUser(name: name, email: email, password: password) { result in
            DispatchQueue.main.async {
                switch result {
                case .success:
                    self.onSignUpSuccess?()
                case .failure(let error):
                    self.onSignUpFailure?("Erro ao conectar com o servidor: \(error.localizedDescription)")
                }
            }
        }
    }
}

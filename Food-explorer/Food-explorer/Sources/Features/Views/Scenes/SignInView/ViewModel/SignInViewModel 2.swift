//
//  SignInViewModel.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 26/02/25.
//

import Foundation

enum SignInError: Error {
    case emptyFields
}

class SignInViewModel {
    var onSignInSuccess: (() -> Void)?
    var onSignInFailure: ((String) -> Void)?
    
    func signIn(email: String, password: String) {
        guard !email.isEmpty, !password.isEmpty else {
            onSignInFailure?("Preencha todos os campos.")
            return
        }
        
        SessionService.shared.createSession(email: email, password: password) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let user):
                    self.onSignInSuccess?()
                case .failure(let error):
                    self.onSignInFailure?("Erro ao conectar com o servidor: \(error.localizedDescription)")
                }
            }
        }
    }
}

//
//  SessionService.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 27/02/25.
//

import Foundation

enum SessionServiceError: Error {
    case authenticationFailed
}

class SessionService {
    let userServiceEndpoint: String = Api.baseUrlString + "/sessions"
    static let shared = SessionService()
    
    private let session = URLSession.shared
    
    func createSession(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
        guard let url = URL(string: userServiceEndpoint) else {
            return completion(.failure(ApiError.invalidURL))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body: [String: String] = [
            "email": email,
            "password": password
        ]
        
        request.httpBody = try? JSONEncoder().encode(body)
        
        session.dataTask(with: request) {
            data, response, error in
            if let error = error {
                print("Erro de rede:", error.localizedDescription)
                return completion(.failure(error))
            }
            
            guard let data else {
                print("Erro: Nenhum dado recebido")
                return completion(.failure(ApiError.noDataReceived))
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("Erro: Resposta inválida do servidor")
                return completion(.failure(ApiError.invalidResponse))
            }
            
            switch response.statusCode {
            case 201:
            if let userData = try? JSONDecoder().decode(User.self, from: data) {
                return completion(.success(userData))
            } else {
                print("Erro: Dados de usuário inválidos")
                return completion(.failure(ApiError.invalidData))
            }
            case 401:
                print("Erro: Autenticação falhou")
                return completion(.failure(SessionServiceError.authenticationFailed))
            default:
                print("Erro: Status code inesperado: \(response.statusCode)")
                return completion(.failure(ApiError.invalidResponse))
            }
        }.resume()
    }
}

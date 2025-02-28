//
//  UserService.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 26/02/25.
//

import Foundation

enum UserServiceError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case noResponseReceived
    case noDataReceived
}

class UserService {
    let userServiceEndpoint: String = Api.baseUrlString + "/users"
    static let shared: UserService = UserService()
    
    private let session = URLSession.shared
    
    func createUser(name: String, email: String, password: String, _ completion: @escaping (Result <Void, Error>) -> Void) throws {
        
        guard let url = URL(string: userServiceEndpoint) else {
            return completion(.failure(UserServiceError.invalidURL))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body: [String: String] = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        request.httpBody = try? JSONEncoder().encode(body)
        
        session.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Erro de rede:", error.localizedDescription)
                return completion(.failure(error))
            }
            
            guard let data else {
                print("Erro: Nenhum dado recebido")
                return completion(.failure(UserServiceError.noDataReceived))
            }

            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 201 else {
                print("Erro: Resposta inválida do servidor")
                return completion(.failure(UserServiceError.invalidResponse))
            }

            completion(.success(()))
        }.resume()
    }
}

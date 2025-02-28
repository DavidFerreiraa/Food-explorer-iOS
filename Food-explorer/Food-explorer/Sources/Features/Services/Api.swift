//
//  Api.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 25/02/25.
//

import Foundation
import UIKit

enum ApiError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case noResponseReceived
    case noDataReceived
}

class Api {
    static let baseUrlString: String = "http://192.168.1.110:3333"
}

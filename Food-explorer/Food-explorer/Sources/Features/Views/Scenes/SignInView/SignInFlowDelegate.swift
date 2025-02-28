//
//  SignInFlowDelegate.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 10/12/24.
//

import Foundation
import UIKit

public protocol SignInFlowDelegate: AnyObject {
    func navigateToSignUp()
    func navigateToHome()
}

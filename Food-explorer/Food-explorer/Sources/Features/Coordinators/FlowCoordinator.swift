//
//  FlowCoordinator.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 08/12/24.
//

import Foundation
import UIKit

class FlowCoordinator {
    
    private var navigationController: UINavigationController?
    
    public init() {
        
    }
    
    func start() -> UINavigationController? {
        let contentView = SplashView()
        let rootViewController: UIViewController = SplashViewController(contentView: contentView, delegate: self)
        
        self.navigationController = UINavigationController(rootViewController: rootViewController)
        
        return navigationController
    }
}

extension FlowCoordinator: SignInFlowDelegate {
    func navigateToSignUp() {
        let contentView = SignUpView()
        let signUpViewController = SignUpViewController(contentView: contentView, delegate: self)
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
}

extension FlowCoordinator: SignUpFlowDelegate {
    func navigateToSignIn() {
        navigationController?.popViewController(animated: true)
    }
}

extension FlowCoordinator: SplashFlowDelegate {
    func navigateToApp() {
        let contentView = SignInView()
        let signInViewController: UIViewController = SignInViewController(contentView: contentView, delegate: self)
        navigationController?.pushViewController(signInViewController, animated: true)
    }
}

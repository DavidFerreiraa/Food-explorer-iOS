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
        let rootViewController: UIViewController = SignInViewController()
        
        self.navigationController = UINavigationController(rootViewController: rootViewController)
        
        return navigationController
    }
}

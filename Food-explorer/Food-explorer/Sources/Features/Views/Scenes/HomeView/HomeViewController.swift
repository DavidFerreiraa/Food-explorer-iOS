//
//  HomeViewController.swift
//  Food-explorer
//
//  Created by David Ferreira Lima on 28/02/25.
//

import UIKit

class HomeViewController: UIViewController {
    let contentView: UIView
    
    init(contentView: UIView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


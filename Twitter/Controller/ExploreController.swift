//
//  ExploreController.swift
//  Twitter
//
//  Created by John Allen Santos Coimbra on 13/02/22.
//

import UIKit

class ExploreController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}


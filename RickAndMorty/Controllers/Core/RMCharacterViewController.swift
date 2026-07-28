//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Omkar Vijay Bagade on 28/07/26.
//

import UIKit

/// Controller to show and search for characters 
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
    
        let request = RMRequest(
            endpoint: .character,
            pathComponents: ["1"]
        )
        print(request.url)
        
        RMService.shared.execute(request, expecting: String.self) { result in
            
        }
        
    }
}

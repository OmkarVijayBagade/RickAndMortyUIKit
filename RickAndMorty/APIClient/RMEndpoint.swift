//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Omkar Vijay Bagade on 28/07/26.
//

import Foundation

/// represents unique API endpoints
@frozen enum RMEndpoint: String {
    /// endpoint to get character info
    case character
    /// endpoint to get locatoin info
    case location
    /// endpoint to get episdoe info
    case episode
    
}

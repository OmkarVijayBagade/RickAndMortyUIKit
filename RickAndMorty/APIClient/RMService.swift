//
//  RMService.swift
//  RickAndMorty
//
//  Created by Omkar Vijay Bagade on 28/07/26.
//

import Foundation


/// Primary service for getting the data from rickandmorty api
final class RMService {
    
    /// shared singleton instance
    static let shared = RMService()
    
    /// privatised constructor
    private init() {}
    
    /// Send rickandmorty api call
    /// - Parameters:
    ///   - request: Request instance
    ///   - complete: callback with data or error
    public func execute(_ request: RMRequest, complete: @escaping () -> Void){
        
    }
    
}

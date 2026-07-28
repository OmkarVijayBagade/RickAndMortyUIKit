//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Omkar Vijay Bagade on 28/07/26.
//

import Foundation

/// constructed URL  that represent single API call
/// Constructed URL for the API request in string
final class RMRequest{
    
    /// these are the API urls to get the data from and structure it according to the application
    //base URL : https://rickandmortyapi.com/api
    private struct Constants{
        static let baseURL = "https://rickandmortyapi.com/api"
    }
  
    //endpoint : /character endpoint : https://rickandmortyapi.com/api/character
    private let endpoint: RMEndpoint
    
    //path components : https://rickandmortyapi.com/api/character/2
    private let pathComponents: Set<String>
    
    //query parameters : https://rickandmortyapi.com/api/character/?name=rick&status=alive  : name? , status?
    private let queryParameters: [URLQueryItem]
    
    private var urlString : String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Desired request
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// desired http method
    public let httpMethod = "GET"
    
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path Componets
    ///   - queryParameters: collectin of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

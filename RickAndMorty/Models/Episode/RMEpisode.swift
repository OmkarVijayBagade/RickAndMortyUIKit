//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Omkar Vijay Bagade on 28/07/26.
//

import Foundation

struct RMEpisode: Codable{
    let id: Int
          let name: String
          let air_date: String
          let episode: String
          let characters: [String]
          let url: String
          let created: String
}

//
//  NetworkServiceDelegate.swift
//  LaboAPI
//
//  Created by Benjamin on 16/09/2020.
//  Copyright © 2020 Benjamin. All rights reserved.
//

import Foundation

protocol NetworkServiceDelegate {
    static func getData()
}

class NetworkService: NetworkServiceDelegate {
    static func getData() {
        let url = URL(string: "https://api-v3.igdb.com/games")!
        var requestHeader = URLRequest.init(url: url)
        requestHeader.httpBody = "fields age_ratings,aggregated_rating,aggregated_rating_count,alternative_names,artworks,bundles,category,checksum,collection,cover,created_at,dlcs,expansions,external_games,first_release_date,follows,franchise,franchises,game_engines,game_modes,genres,hypes,involved_companies,keywords,multiplayer_modes,name,parent_game,platforms,player_perspectives,popularity,pulse_count,rating,rating_count,release_dates,screenshots,similar_games,slug,standalone_expansions,status,storyline,summary,tags,themes,time_to_beat,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos,websites;".data(using: .utf8, allowLossyConversion: false)
        requestHeader.httpMethod = "POST"
        requestHeader.setValue("696aff72c7dabe27b2196d7932637e59", forHTTPHeaderField: "user-key")
        requestHeader.setValue("application/json", forHTTPHeaderField: "Accept")
        URLSession.shared.dataTask(with: requestHeader) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data,
                let report = try? jsonDecoder.decode(Games.self, from: data) {
                    print(report)
                }
        }.resume()
    }
}

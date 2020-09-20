// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let games = try? newJSONDecoder().decode(Games.self, from: jsonData)

import Foundation

// MARK: - Games
struct Games: Codable {
    let id: Int
    let ageRatings: [Int]
    let category, collection, cover, createdAt: Int
    let externalGames: [Int]
    let firstReleaseDate: Int
    let genres, involvedCompanies, keywords, multiplayerModes: [Int]
    let name: String
    let platforms: [Int]
    let popularity: Double
    let releaseDates, screenshots, similarGames: [Int]
    let slug, summary: String
    let tags: [Int]
    let updatedAt: Int
    let url: String
    let videos, websites: [Int]
    let checksum: String

    enum CodingKeys: String, CodingKey {
        case id
        case ageRatings = "age_ratings"
        case category, collection, cover
        case createdAt = "created_at"
        case externalGames = "external_games"
        case firstReleaseDate = "first_release_date"
        case genres
        case involvedCompanies = "involved_companies"
        case keywords
        case multiplayerModes = "multiplayer_modes"
        case name, platforms, popularity
        case releaseDates = "release_dates"
        case screenshots
        case similarGames = "similar_games"
        case slug, summary, tags
        case updatedAt = "updated_at"
        case url, videos, websites, checksum
    }
}

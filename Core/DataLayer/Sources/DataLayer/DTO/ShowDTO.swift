//
//  ShowDTO.swift
//  Telestream
//
//  Created by Ashish Mohite on 20/07/25.
//

import DomainLayer

struct ShowDTO: Decodable, Identifiable {
  let adult: Bool
  let backdropPath: String
  let id: Int
  let name, originalName, overview, posterPath: String
  let mediaType: String
  let originalLanguage: String
  let genreIDS: [Int]
  let popularity: Double
  let firstAirDate: String
  let voteAverage: Double
  let voteCount: Int
  let originCountry: [String]

  enum CodingKeys: String, CodingKey {
      case adult
      case backdropPath = "backdrop_path"
      case id, name
      case originalName = "original_name"
      case overview
      case posterPath = "poster_path"
      case mediaType = "media_type"
      case originalLanguage = "original_language"
      case genreIDS = "genre_ids"
      case popularity
      case firstAirDate = "first_air_date"
      case voteAverage = "vote_average"
      case voteCount = "vote_count"
      case originCountry = "origin_country"
  }

  func toDomainModel() -> Show {
    Show(id: id, title: name, posterPath: posterPath, backdropPath: backdropPath)
  }
}

//
//  SyncType.swift
//  Telestream
//
//  Created by Ashish Mohite on 11/07/25.
//

enum SyncType: Codable {
  case TRENDING_SHOWS
  case POPULAR_SHOWS
  case TOP_RATED_SHOWS
  case ON_AIR_SHOWS
  case AIRING_TODAY_SHOWS
  case GENRES
  case SHOW_DETAILS
  case EPISODE_DETAILS

  var title: String {
    switch self {
      case .TRENDING_SHOWS: return "trending_shows"
      case .POPULAR_SHOWS: return "popular_shows"
      case .TOP_RATED_SHOWS: return "top_rated_shows"
      case .ON_AIR_SHOWS: return "on_air_shows"
      case .AIRING_TODAY_SHOWS: return "airing_today_shows"
      case .GENRES: return "show_genres"
      case .SHOW_DETAILS: return "show_details"
      case .EPISODE_DETAILS: return "show_episode_details"
    }
  }
}

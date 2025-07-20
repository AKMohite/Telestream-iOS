//
//  TeleAPIService.swift
//  Telestream
//
//  Created by Ashish Mohite on 20/07/25.
//

import Foundation

final class TeleAPIService {

  private let baseUrl = TeleConstants.baseUrl
  private let apikey = TeleConstants.apikey
  private let session = URLSession.shared

  func fetchTrendingShows() async throws -> [ShowDTO] {
    let urlString = "\(baseUrl)/trending/tv/day?language=en-US&api_key=\(apikey)"
    guard let url = URL(string: urlString) else {
      throw URLError(.badURL)
    }
    let (data, urlResponse) = try await session.data(from: url)
    let response = try JSONDecoder().decode(PaginatedShowDTO.self, from: data)
    return response.results
  }

}

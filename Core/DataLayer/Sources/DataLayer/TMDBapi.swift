//
//  TMDBapi.swift
//  DataLayer
//
//  Created by Ashish Mohite on 26/07/25.
//

import Foundation
import Alamofire
import Combine
import DomainLayer

public final class TMDBapi: APIClient {

  private let baseUrl = "https://api.themoviedb.org/3"
  private let apiKey = {
    guard let key = Bundle.main.object(forInfoDictionaryKey: "TMDB_API_KEY") as? String else {
        // This fatalError will crash the app during development if the key
        // is missing, preventing us from shipping a broken app.
        fatalError("TMDB_API_KEY must be set in Info.plist and AppSekrets.xcconfig")
    }
    return key
}()

  public init() {}

  public func fetchTrendingShows() -> AnyPublisher<[Show], Error> {
      let url = "\(baseUrl)/trending/tv/week"
      let parameters: [String: Any] = ["api_key": apiKey]
    return AF.request(url, parameters: parameters)
                     .validate()
                     .publishDecodable(type: PaginatedShowDTO.self)
                     .value()
                     .map { trendingResultsDTO in
                         return trendingResultsDTO.results.map { $0.toDomainModel() }
                     }
                     .mapError { afError in
                         return afError as Error
                     }
                     .eraseToAnyPublisher()
  }
}

public protocol APIClient {
  func fetchTrendingShows() -> AnyPublisher<[Show], Error>
}

//
//  ShowRepositoryImpl.swift
//  DataLayer
//
//  Created by Ashish Mohite on 26/07/25.
//

import Foundation
import DomainLayer
import Combine

public class ShowRepositoryImpl: ShowRepository {
  private let apiClient: APIClient

  public init(apiClient: APIClient = TMDBapi()) {
    self.apiClient = apiClient
  }

  public func fetchTrendingShows() -> AnyPublisher<[Show], Error> {
          // It simply delegates the call to the real API client.
          return apiClient.fetchTrendingShows()
      }
}

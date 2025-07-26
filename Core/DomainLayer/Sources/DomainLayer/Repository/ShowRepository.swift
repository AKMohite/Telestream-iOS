//
//  ShowRepository.swift
//  DomainLayer
//
//  Created by Ashish Mohite on 26/07/25.
//

import Foundation
import Combine

public protocol ShowRepository {
  func fetchTrendingShows() -> AnyPublisher<[Show], Error>
}

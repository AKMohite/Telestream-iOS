//
//  DiscoverViewModel.swift
//  DiscoverUI
//
//  Created by Ashish Mohite on 26/07/25.
//

import Foundation
import Combine
import DomainLayer
import DataLayer

// @MainActor ensures that any updates to our published properties
// happen on the main thread, which is required for UI updates.
@MainActor
class DiscoverViewModel: ObservableObject {

    // @Published is a property wrapper that tells SwiftUI to watch this
    // property. When it changes, any view using this ViewModel will re-render.
  @Published var showsByCategory: [DiscoverCategory: [Show]] = [:]

    // We need an instance of our data repository to fetch data.
    // In a real app, we'd use Dependency Injection here, but for now,
    // we'll create it directly.
  private let showRepository: ShowRepository
  private var cancellables = Set<AnyCancellable>()

  init(showRepository: ShowRepository = ShowRepositoryImpl()) {
    self.showRepository = showRepository
  }

  func fetchAllCategories() {
          // We loop through every case defined in our enum.
          for category in DiscoverCategory.allCases {
            showRepository.fetchTrendingShows()
              .receive(on: DispatchQueue.main)
              .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                  print("Error fetching shows: \(error.localizedDescription)")
                }
              }, receiveValue: { [weak self] shows in
                self?.showsByCategory[category] = shows

              }).store(in: &cancellables)
          }
      }

  private func sampleData(for category: DiscoverCategory) -> [Show] {
          return [
              .init(id: Int.random(in: 1...1000), title: "\(category.title) Show 1", posterPath: nil, backdropPath: nil),
              .init(id: Int.random(in: 1...1000), title: "\(category.title) Show 2", posterPath: nil, backdropPath: nil),
              .init(id: Int.random(in: 1...1000), title: "\(category.title) Show 3", posterPath: nil, backdropPath: nil),
              .init(id: Int.random(in: 1...1000), title: "\(category.title) Show 4", posterPath: nil, backdropPath: nil),
              .init(id: Int.random(in: 1...1000), title: "\(category.title) Show 5", posterPath: nil, backdropPath: nil)
          ]
      }
}

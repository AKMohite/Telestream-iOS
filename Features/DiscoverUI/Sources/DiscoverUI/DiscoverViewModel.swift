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
    private let dataRepository = DataLayer() // This is a simplified placeholder for the repository/use case

  func fetchAllCategories() {
          // We loop through every case defined in our enum.
          for category in DiscoverCategory.allCases {
              // For now, we'll just populate each with unique sample data.
              // In a real implementation, we would call a different repository
              // function for each category.
              showsByCategory[category] = sampleData(for: category)
          }
      }

  private func sampleData(for category: DiscoverCategory) -> [Show] {
          return [
              .init(id: Int.random(in: 1...1000), title: "\(category.title) Show 1", posterPath: nil, backdropPath: nil),
              .init(id: Int.random(in: 1...1000), title: "\(category.title) Show 2", posterPath: nil, backdropPath: nil)
          ]
      }
}

//
//  DiscoverViewmodel.swift
//  Telestream
//
//  Created by Ashish Mohite on 02/07/25.
//

import Foundation

class DiscoverViewmodel: ObservableObject {
  @Published var categories: [DiscoverCategory] = []
  @Published var shows: [Show] = []
  @Published var error: String?

  private let api = TeleAPIService()

  func refresh() async {
    do {
//      self.categories = PreviewData.categories
      let dtos = try await api.fetchTrendingShows()
      let shows = dtos.map { dto in
        Show(id: dto.id, title: dto.name, image: "https://image.tmdb.org/t/p/w500\(dto.posterPath)", cover: "https://image.tmdb.org/t/p/w500\(dto.backdropPath)")
      }
      self.categories = [
        DiscoverCategory(name: "Popular", shows: shows),
        DiscoverCategory(name: "Trending", shows: shows),
        DiscoverCategory(name: "On Air", shows: shows),
        DiscoverCategory(name: "Airing today", shows: shows),
        DiscoverCategory(name: "Top rated", shows: shows),
      ]
    } catch {
      DispatchQueue.main.async {
        self.error = error.localizedDescription
      }
    }
  }
}

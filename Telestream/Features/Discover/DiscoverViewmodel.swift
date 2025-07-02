//
//  DiscoverViewmodel.swift
//  Telestream
//
//  Created by Ashish Mohite on 02/07/25.
//

import Foundation

class DiscoverViewmodel: ObservableObject {
  @Published var categories: [DiscoverCategory] = []

  func refresh() {
    categories = PreviewData.categories
  }
}

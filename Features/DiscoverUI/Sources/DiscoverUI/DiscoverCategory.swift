//
//  DiscoverCategory.swift
//  DiscoverUI
//
//  Created by Ashish Mohite on 26/07/25.
//

import Foundation
import DesignSystem

enum DiscoverCategory: CaseIterable {
    case trending
    case popular
    case topRated
    case upcoming

  var title: String {
    I18n.string(for: titleKey)
  }

  private var titleKey: String.LocalizationValue {
          switch self {
          case .trending:
              return "discover.trending.title"
          case .popular:
              return "discover.popular.title"
          case .topRated:
              return "discover.topRated.title"
          case .upcoming:
              return "discover.upcoming.title"
          }
      }
}


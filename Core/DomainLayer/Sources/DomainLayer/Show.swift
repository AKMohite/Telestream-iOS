//
//  File.swift
//  DomainLayer
//
//  Created by Ashish Mohite on 26/07/25.
//

import Foundation

struct Show: Identifiable {
  let id: Int
  let title: String
  let backdropPath: String?
  let posterPath: String?

  private let imageBaseURL = "https://image.tmdb.org/t/p/w500"

      public var posterURL: URL? {
          guard let posterPath = posterPath else { return nil }
          return URL(string: imageBaseURL + posterPath)
      }

      public var backdropURL: URL? {
          guard let backdropPath = backdropPath else { return nil }
          return URL(string: imageBaseURL + backdropPath)
      }

}

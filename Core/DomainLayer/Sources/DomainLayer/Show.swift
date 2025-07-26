//
//  File.swift
//  DomainLayer
//
//  Created by Ashish Mohite on 26/07/25.
//

import Foundation

public struct Show: Identifiable {
  public let id: Int
  public let title: String
  let backdropPath: String?
  let posterPath: String?

  public init(id: Int, title: String, posterPath: String?, backdropPath: String?) {
          self.id = id
          self.title = title
          self.posterPath = posterPath
          self.backdropPath = backdropPath
      }

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

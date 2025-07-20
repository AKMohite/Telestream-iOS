//
//  ShowEntity.swift
//  Telestream
//
//  Created by Ashish Mohite on 11/07/25.
//

import SwiftData
import Foundation

@Model
final class ShowEntity {
  @Attribute(.unique) var id: Int
  var title: String
  @Attribute(originalName: "original_title") var originalTitle: String
  var overview: String
  var cetification: String
  @Attribute(originalName: "first_aired") var firstAired: Date?
  var network: String
  var genres: String
  var status: String
  @Relationship(deleteRule: .cascade)
  var seasons: [SeasonEntity]? = []

  init(id: Int, title: String, originalTitle: String, overview: String, cetification: String, firstAired: Date? = nil, network: String, genres: String, status: String) {
    self.id = id
    self.title = title
    self.originalTitle = originalTitle
    self.overview = overview
    self.cetification = cetification
    self.firstAired = firstAired
    self.network = network
    self.genres = genres
    self.status = status
  }
}

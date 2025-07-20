//
//  SeasonEntity.swift
//  Telestream
//
//  Created by Ashish Mohite on 11/07/25.
//

import SwiftData

@Model
final class SeasonEntity {
  @Attribute(originalName: "show_id") var showId: Int

  init(showId: Int) {
    self.showId = showId
  }
}

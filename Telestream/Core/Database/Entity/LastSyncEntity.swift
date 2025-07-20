//
//  LastSyncEntity.swift
//  Telestream
//
//  Created by Ashish Mohite on 11/07/25.
//

import SwiftData
import Foundation

@Model
final class LastSyncEntity {
  @Attribute(.unique) var id: Int
  var request: SyncType
  @Attribute(originalName: "entity_id") var entityId: Int
  @Attribute(originalName: "synced_at") var syncedAt: Date

  init(id: Int, request: SyncType, entityId: Int, syncedAt: Date) {
    self.id = id
    self.request = request
    self.entityId = entityId
    self.syncedAt = syncedAt
  }
}

//
//  PaginatedShowDTO.swift
//  Telestream
//
//  Created by Ashish Mohite on 20/07/25.
//

struct PaginatedShowDTO: Decodable {
  let page: Int
  let results: [ShowDTO]
  let totalPages, totalResults: Int

  enum CodingKeys: String, CodingKey {
      case page, results
      case totalPages = "total_pages"
      case totalResults = "total_results"
  }
}

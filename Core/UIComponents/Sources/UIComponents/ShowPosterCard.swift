//
//  ShowPosterCard.swift
//  Telestream
//
//  Created by Ashish Mohite on 26/07/25.
//

import SwiftUI
import DomainLayer
import Kingfisher

public struct ShowPosterCard: View {
    let show: Show

    public init(show: Show) {
        self.show = show
    }

    public var body: some View {
        KFImage(show.posterURL)
            .placeholder {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
            }
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(8)
            .shadow(radius: 4)
    }
}

#Preview {
  ShowPosterCard(show: .init(id: 1, title: "title 1", posterPath: nil, backdropPath: nil))
}


//
//  ComponentDiscoverCategory.swift
//  Telestream
//
//  Created by Ashish Mohite on 22/02/25.
//

import SwiftUI

struct ComponentDiscoverCategory: View {
  let category: DiscoverCategory

    var body: some View {
      VStack(
        alignment: .leading
      ) {
        Text(category.name)
          .font(.headline)
          .padding(.leading, 4)
          .padding(.top, 5)

        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 0) {
            ForEach(category.shows) { show in
              ComponentShow(show: show)
                .padding(.leading, 4)
            }
          }
        }
        .frame(height: 250)
      }
    }
}

#Preview {
  ComponentDiscoverCategory(category: PreviewData.categories[0])
}

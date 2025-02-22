//
//  DiscoverView.swift
//  Telestream
//
//  Created by Ashish Mohite on 22/02/25.
//

import SwiftUI

struct DiscoverView: View {

    var body: some View {
      List{
        ForEach(PreviewData.categories, id: \.name) { category in
          ComponentDiscoverCategory(category: category)
        }.listRowInsets(EdgeInsets())
      }.listStyle(.inset)
        .navigationTitle("Discover")
    }
}

#Preview {
    DiscoverView()
}

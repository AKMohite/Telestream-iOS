//
//  DiscoverView.swift
//  Telestream
//
//  Created by Ashish Mohite on 22/02/25.
//

import SwiftUI

struct DiscoverView: View {

  @StateObject var viewmodel: DiscoverViewmodel

    var body: some View {
      List{
        ForEach(viewmodel.categories, id: \.name) { category in
          ComponentDiscoverCategory(category: category)
        }.listRowInsets(EdgeInsets())
      }.listStyle(.inset)
        .navigationTitle("Discover")
        .onAppear {
          viewmodel.loadSections()
        }
//        .task {
//          await viewmodel.refresh()
//        }
    }
}

#Preview {
    DiscoverView(viewmodel: DiscoverViewmodel())
}

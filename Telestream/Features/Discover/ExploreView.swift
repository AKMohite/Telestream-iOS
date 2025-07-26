//
//  ExploreView.swift
//  Telestream
//
//  Created by Ashish Mohite on 22/02/25.
//

import SwiftUI

struct ExploreView: View {

  @StateObject var viewmodel: ExploreViewmodel

    var body: some View {
      List{
//        ForEach(viewmodel.categories, id: \.name) { category in
//          ComponentDiscoverCategory(category: category)
//        }.listRowInsets(EdgeInsets())
      }.listStyle(.inset)
        .navigationTitle("Discover")
        .onAppear {
//          viewmodel.loadSections()
        }
//        .task {
//          await viewmodel.refresh()
//        }
    }
}

#Preview {
  ExploreView(viewmodel: ExploreViewmodel())
}

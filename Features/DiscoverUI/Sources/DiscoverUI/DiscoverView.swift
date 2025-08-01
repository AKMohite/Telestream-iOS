//
//  DiscoverView.swift
//  Telestream
//
//  Created by Ashish Mohite on 26/07/25.
//

import SwiftUI
import DesignSystem
import UIComponents

public struct DiscoverView: View {
    @StateObject private var viewModel = DiscoverViewModel()

    public init() {}

    public var body: some View {
        ZStack {
            Color.backgroundPrimary
                .ignoresSafeArea()

            NavigationStack {
                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        ForEach(DiscoverCategory.allCases, id: \.self) { category in
                            VStack(alignment: .leading) {
                                Text(category.title)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding(.horizontal)

                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 16) {
                                        if let shows = viewModel.showsByCategory[category] {
                                            ForEach(shows, id: \.id) { show in
                                                ShowPosterCard(show: show)
                                                .frame(width: 150)
                                            }
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        }
                    }
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationTitle("Discover")
            .navigationBarTitleDisplayMode(.large)
        }
        .onAppear {
            viewModel.fetchAllCategories()
        }
    }
}


#Preview {
    DiscoverView()
}

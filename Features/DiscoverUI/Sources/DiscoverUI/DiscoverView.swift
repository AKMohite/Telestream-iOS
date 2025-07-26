//
//  DiscoverView.swift
//  Telestream
//
//  Created by Ashish Mohite on 26/07/25.
//

import SwiftUI
import DomainLayer

public struct DiscoverView: View {
    public init() {} // This allows other modules to create our view

    public var body: some View {
        // For now, it's just a placeholder.
        // We'll build this out in Sprint 2.
        NavigationStack {
            Text("Discover Feature")
                .navigationTitle("Discover")
        }
    }
}


#Preview {
    DiscoverView()
}

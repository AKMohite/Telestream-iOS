//
//  ContentView.swift
//  Telestream
//
//  Created by Ashish Mohite on 23/01/25.
//

import SwiftUI
import DiscoverUI

struct ContentView: View {
    var body: some View {
      TabView {
        DiscoverView()
          .tabItem {
            Label("Explore", systemImage: "sparkles.tv.fill")
          }
        CollectionsView()
          .tabItem {
            Label("Collections" ,systemImage: "square.stack.fill")
          }
        SettingsView()
          .tabItem {
            Label("Settings", systemImage: "gearshape.fill")
          }
      }.accentColor(.purple)
    }
}

#Preview {
    ContentView()
}

//
//  ComponentShow.swift
//  Telestream
//
//  Created by Ashish Mohite on 22/02/25.
//

import SwiftUI
import DomainLayer

struct ComponentShow: View {

//  let show: Show

    var body: some View {
//      AsyncImage(url: URL(string: show.image)) { image in
//        image.image?.resizable()
//          .scaledToFill()
//      }
//        .frame(width: 200, height: 250)
//        .background(.gray.opacity(0.25))
//        .overlay {
//          TitleOverlay(title: show.title)
//        }.cornerRadius(8)
      ZStack {
        
      }
    }
}

private struct TitleOverlay: View {
  var gradient: LinearGradient {
    .linearGradient(
      Gradient(colors: [.black.opacity(0.4), .black.opacity(0)]),
      startPoint: .bottom,
      endPoint: .center
    )
  }
  let title: String
  var body: some View {
    ZStack(alignment: .bottomLeading) {
      gradient
      Text(title)
        .lineLimit(2)
        .font(.subheadline)
        .bold()
        .padding()
    }.foregroundStyle(.white)
  }
}

//#Preview {
//  ComponentShow(show: PreviewData.categoryShows[0])
//}

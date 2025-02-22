//
//  ComponentShow.swift
//  Telestream
//
//  Created by Ashish Mohite on 22/02/25.
//

import SwiftUI

struct ComponentShow: View {

  let show: Show

    var body: some View {
//      ZStack {
//        RoundedRectangle(cornerRadius: 8)
//          .fill(.gray)
//        Image(systemName: "folder")
//          .frame(width: .infinity, height: .infinity)
//        Text(show.title)
//          .font(.title3)
//          .lineLimit(2)
//      }.frame(width: 250, height: 300)
//      TODO: load image from url
      Image(systemName: "folder")
        .frame(width: 200, height: 250)
        .scaledToFill()
        .background(.gray.opacity(0.25))
        .overlay {
          TitleOverlay(title: show.title)
        }.cornerRadius(8)
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

#Preview {
  ComponentShow(show: PreviewData.categoryShows[0])
}

//
//  MediaView.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/5/26.
//

import SwiftUI

struct MediaView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            HStack(alignment: .center) {
                VStack(alignment: .center) {
                    Text("Coming soon!")
                        .font(.system(.body, design: .monospaced))
                        .foregroundColor(.gray)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.gray.opacity(0.15))
                        )
                }
            }
        }
    }
}

#Preview {
    MediaView()
}

//
//  RectangleWallpaper.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/5/26.
//

import SwiftUI

struct Wallpaper: View {
    let spacing: CGFloat = 36
    let minSize: CGFloat = 16
    let maxSize: CGFloat = 32
    let cornerRadius: CGFloat = 4

    var body: some View {
        GeometryReader { geo in
            let columns = Int(geo.size.width / spacing)
            let rows = Int(geo.size.height / spacing)

            Canvas { context, size in
                for row in 0...rows {
                    for col in 0...columns {
                        let randomSize = CGFloat.random(in: minSize...maxSize)

                        let x = CGFloat(col) * spacing
                        let y = CGFloat(row) * spacing

                        let rect = CGRect(
                            x: x,
                            y: y,
                            width: randomSize,
                            height: randomSize
                        )

                        let path = Path(
                            roundedRect: rect,
                            cornerRadius: cornerRadius
                        )

                        context.fill(
                            path,
                            with: .color(Color.gray.opacity(0.06))
                        )
                    }
                }
            }
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}

//
//  DraftView.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/5/26.
//

import SwiftUI

// we'll show the bottom 4

//        [<team>: (<team-color>, <win%>)]
let bottomFour: [(name: String, color: Color, value: Double)] = [
    (name: "pacers",
     color: Color(CGColor(red: 255/255, green: 191/255, blue: 0/255, alpha: 0.5)),
     value: 0.167),

    (name: "wizards",
     color: Color(CGColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 0.5)),
     value: 0.216),

    (name: "kings",
     color: Color(CGColor(red: 255/255, green: 0/255, blue: 255/255, alpha: 0.5)),
     value: 0.222),

    (name: "pelicans",
     color: Color(CGColor(red: 0/255, green: 0/255, blue: 128/255, alpha: 0.5)),
     value: 0.265)
]


struct DraftView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Wallpaper()
            HStack {
                Spacer().frame(width: 60)
                VStack(alignment: .center) {
                    Text("Lottery Odds")
                        .font(.system(.body, design: .monospaced))
                        .foregroundColor(.white)
                    HStack {
                        Text("<1/>")
                            .font(.system(.body, design: .monospaced))
                            .foregroundColor(.white)
                            .padding()
                        Gauge(value: 0.125, label: {
                            EmptyView()
                        })
                        .tint(.red)
                    }
                    HStack {
                        Text("<2..4/>")
                            .font(.system(.body, design: .monospaced))
                            .foregroundColor(.white)
                            .padding()
                        Gauge(value: 0.356, label: {
                            EmptyView()
                        })
                        .tint(.orange)
                    }
                    HStack {
                        Text("<5..8/>")
                            .font(.system(.body, design: .monospaced))
                            .foregroundColor(.white)
                            .padding()
                        Gauge(value: 0.519, label: {
                            EmptyView()
                        })
                        .tint(.green)
                    }
                    
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.black)
                )
                Spacer().frame(width: 60)
            }
        }
    }
}

#Preview {
    DraftView()
}

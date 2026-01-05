//
//  MoneyView.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/5/26.
//

import SwiftUI

struct DashedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.midY))      // start at left middle
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY)) // straight horizontal
        return path
    }
}


struct SalaryCapGraphView: View {
    var body: some View {
        ZStack {
            HStack {
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 4, height: .infinity)
                Spacer()
            }
            VStack {
                DashedLine()
                    .stroke(
                        Color.gray,
                        style: StrokeStyle(lineWidth: 1, lineCap: .butt, dash: [6, 4])
                    )
                    .frame(height: 1)
                Spacer().frame(height: 50)
                DashedLine()
                    .stroke(
                        Color.gray,
                        style: StrokeStyle(lineWidth: 1, lineCap: .butt, dash: [6, 4])
                    )
                    .frame(height: 1)
                Spacer().frame(height: 150)
                DashedLine()
                    .stroke(
                        Color.gray,
                        style: StrokeStyle(lineWidth: 1, lineCap: .butt, dash: [6, 4])
                    )
                    .frame(height: 1)
                Spacer()
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: .infinity, height: 4)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct MoneyView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            HStack {
                Spacer().frame(width: 80)
                VStack {
                    Spacer().frame(height: 100)
                    SalaryCapGraphView()
                    Spacer().frame(height: 100)
                }
                Spacer().frame(width: 80)
            }
                
            
        }
    }
}

#Preview {
    MoneyView()
}

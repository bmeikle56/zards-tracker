//
//  DashboardView2.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import SwiftUI

@ViewBuilder
func view(for screen: String) -> some View {
    switch screen {
    case "Stats": StatsGraphic()
    case "Draft": DraftGraphic()
    case "Media": MediaGraphic()
    case "Money": StatsGraphic()
    default: StatsGraphic()
    }
}

let screens: [String] = [
    "Stats",
    "Draft",
    "Media",
    "Money"
]

struct MoneyGraphic: View {
    var body: some View {
        Text("")
    }
}

struct DraftGraphic: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 20)
            HStack {
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 30, height: 30)
                    Circle()
                        .fill(Color.black.opacity(0.2))
                        .frame(width: 25, height: 25)
                        .offset(x: 2, y: -2)
                    Text("6")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                        .offset(x: 0, y: -5)
                        .rotation3DEffect(
                            .degrees(45),
                            axis: (x: 1, y: 0, z: 1)
                        )
                }
                Spacer()
                    .frame(width: 50)
            }
            HStack {
                Spacer()
                    .frame(width: 60)
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 20, height: 20)
                    Circle()
                        .fill(Color.black.opacity(0.2))
                        .frame(width: 17, height: 17)
                        .offset(x: -1, y: -2)
                    Text("1")
                        .font(.system(size: 8))
                        .foregroundStyle(.gray)
                        .offset(x: 0, y: -2)
                        .rotation3DEffect(
                            .degrees(25),
                            axis: (x: -1, y: 0, z: -1)
                        )
                }
            }
            HStack {
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 36, height: 36)
                    Circle()
                        .fill(Color.black.opacity(0.2))
                        .frame(width: 30, height: 30)
                        .offset(x: 2, y: 2)
                    Text("5")
                        .font(.system(size: 18))
                        .foregroundStyle(.gray)
                        .offset(x: 3, y: 6)
                        .rotation3DEffect(
                            .degrees(25),
                            axis: (x: -1, y: 0, z: -1)
                        )
                        
                }
                Spacer()
                    .frame(width: 30)
            }
        }
    }
}

struct MediaGraphic: View {
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 40, height: 60)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.22))
                        .frame(width: 30, height: 2)
                        .offset(y: -16)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.26))
                        .frame(width: 30, height: 2)
                        .offset(y: -8)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.12))
                        .frame(width: 30, height: 2)
                        .offset(y: 0)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.20))
                        .frame(width: 30, height: 2)
                        .offset(y: 8)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.3))
                        .frame(width: 30, height: 2)
                        .offset(y: 16)
                }
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color.gray.opacity(0.1))
                            .frame(width: 80, height: 40)
                        Image(systemName: "basketball.fill")
                            .foregroundStyle(Color.gray.opacity(0.3))
                    }
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.1))
                        .frame(width: 80, height: 2)
                }
            }
        }
    }
}

struct StatsGraphic: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.7))
                        .frame(width: 20, height: 50)
                }
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 20, height: 100)
                }
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.5))
                        .frame(width: 20, height: 80)
                }
            }
            RoundedRectangle(cornerRadius: 2)
                .fill(Color.gray.opacity(0.3))
                .frame(width: 100, height: 2)
        }
    }
}

struct DashboardView2: View {
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(screens, id: \.self) { screen in
                    VStack {
                        view(for: screen)
                            .frame(height: 120)
                        Spacer().frame(height: 20)
                        Text("< \(screen) >")
                            .font(.system(.body, design: .monospaced))
                            .foregroundColor(.gray)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.gray.opacity(0.05))
                            )
                        Spacer().frame(height: 20)
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.08))
                    )
            }
            .padding()
        }
    }
}

#Preview {
    DashboardView2()
}

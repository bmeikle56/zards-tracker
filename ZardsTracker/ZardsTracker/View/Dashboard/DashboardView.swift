//
//  DashboardView2.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import SwiftUI
import UIKit

@ViewBuilder
func view(for destination: Destination) -> some View {
    switch destination {
    case .stats: StatsGraphic()
    case .draft: DraftGraphic()
    case .media: MediaGraphic()
    case .money: MoneyGraphic()
    }
}

struct MoneyGraphic: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            HStack {
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
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.32))
                        .frame(width: 40, height: 60)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.18))
                        .frame(width: 30, height: 2)
                        .offset(y: -16)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.22))
                        .frame(width: 30, height: 2)
                        .offset(y: -8)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.15))
                        .frame(width: 30, height: 2)
                        .offset(y: 0)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.14))
                        .frame(width: 30, height: 2)
                        .offset(y: 8)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.black.opacity(0.28))
                        .frame(width: 30, height: 2)
                        .offset(y: 16)
                }
            }
            HStack {
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 40, height: 20)
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color.gray.opacity(0.32))
                    .frame(width: 40, height: 12)
                    .offset(y: 4)
            }
        }
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
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.08))
                        .frame(width: 2, height: 10)
                        .offset(x: -6, y: -28)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.08))
                        .frame(width: 2, height: 14)
                        .offset(x: 0, y: -30)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.08))
                        .frame(width: 2, height: 8)
                        .offset(x: 5, y: -28)
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
            Spacer().frame(height: 20)
            HStack {
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

struct MonumentGraphic: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(Color.gray)
                .frame(width: 12, height: 12)
                .offset(x: -21.2, y: -21.2)
                .rotationEffect(Angle(degrees: 45))
                .scaleEffect(x: 0.48, y: 0.9)
            Rectangle()
                .foregroundStyle(Color.gray)
                .frame(width: 10, height: 72)
                .rotation3DEffect(
                    .degrees(25),
                    axis: (x: 1, y: 0, z: 0)
                )
        }
    }
}

// gold:
//RoundedRectangle(cornerRadius: 2)
//    .fill(Color(cgColor: CGColor(red: 183/255, green: 135/255, blue: 0/255, alpha: 0.8)))
//    .frame(width: 80, height: 2)

struct DashboardView: View {
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack(spacing: 30) {
                    MonumentGraphic()
                    VStack(alignment: .leading) {
                        Text("Zards Tracker")
                            .font(.system(.body, design: .monospaced, weight: .heavy))
                            .foregroundColor(.gray)
                        RoundedRectangle(cornerRadius: 2)
                            .fill(Color.red.opacity(0.8))
                                .frame(width: 120, height: 2)
                        RoundedRectangle(cornerRadius: 2)
                                .fill(Color.blue.opacity(0.8))
                                .frame(width: 100, height: 2)
                        RoundedRectangle(cornerRadius: 2)
                                .fill(Color.white.opacity(0.8))
                                .frame(width: 80, height: 2)
                    }
                }
                Spacer()
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(Destination.allCases, id: \.self) { destination in
                        Button(action: {
                            path.append(destination)
                        }, label: {
                            VStack {
                                view(for: destination)
                                    .frame(height: 120)
                                Spacer().frame(height: 20)
                                Text("< \(String(describing: destination)) >")
                                    .font(.system(.body, design: .monospaced))
                                    .foregroundColor(.gray)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color.gray.opacity(0.05))
                                    )
                                Spacer().frame(height: 20)
                            }
                        })
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
        .navigationDestination(for: Destination.self) {
            switch $0 {
            case .stats: StatsView()
            case .money: MoneyView()
            case .media: MediaView()
            case .draft: DraftView()
            }
        }
    }
}

#Preview {
    StatefulPreviewWrapper(NavigationPath()) { path in
        NavigationStack(path: path) {
            DashboardView(path: path)
        }
    }
}

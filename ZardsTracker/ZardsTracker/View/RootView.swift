//
//  RootView.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/5/26.
//

import SwiftUI

struct RootView: View {
    @State private var path = NavigationPath()
    
    @StateObject var viewModel = ZardsViewModel()

    var body: some View {
        NavigationStack(path: $path) {
            DashboardView(path: $path)
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .playerStats:
                    PlayerStatsView()
                }
            }
        }
    }
}

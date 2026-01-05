//
//  ZardsTrackerApp.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import SwiftUI

@main
struct ZardsTrackerApp: App {
    @StateObject var viewModel = ZardsViewModel()

    var body: some Scene {
        WindowGroup {
            //DashboardView(viewModel: viewModel)
            PlayerStatsView()
        }
    }
}

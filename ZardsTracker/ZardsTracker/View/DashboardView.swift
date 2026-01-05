//
//  ContentView.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: ZardsViewModel
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundStyle(.red)
            } else {
                if let playerData = viewModel.playerData {
                    VStack {
                        HStack {
                            Text(playerData.first_name)
                            Text(playerData.last_name)
                            Text(playerData.height)
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.loadPlayerData(for: "Keyshawn", lastName: "George")
        }
    }
}

#Preview {
    DashboardView(viewModel: ZardsViewModel())
}

//
//  ZardsViewModel.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import Foundation
import Combine

class ZardsViewModel: ObservableObject {
    @Published var playerData: WizardsPlayerData?
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func loadPlayerData(for firstName: String, lastName: String) {
        isLoading = true

        Task {
            do {
                let playerData = try await fetchPlayerData(for: firstName, lastName: lastName)
                
                await MainActor.run {
                    self.playerData = playerData
                    self.isLoading = false
                }
            } catch {
                await MainActor.run {
                    self.errorMessage = "Failed to load player data: \(error.localizedDescription)"
                    self.isLoading = false
                }
            }
        }
    }
}

//
//  ZardsServices.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import Foundation

let apiKey = "c4381923-e4c1-4acc-b228-3aeb9cac40f0"


func fetchPlayerData(for firstName: String, lastName: String) async throws -> WizardsPlayerData {
    let url = URL(string: "https://api.balldontlie.io/v1/players?first_name=\(firstName.lowercased())&last_name=\(lastName.lowercased())")
    var request = URLRequest(url: url!)
    request.setValue(apiKey, forHTTPHeaderField: "Authorization")
    let response = try await URLSession.shared.data(for: request)
    let playerData = try JSONDecoder().decode(WizardsPlayerDataResponse.self, from: response.0)
    return playerData.data
}


/// API to fetch each team's win loss
/// we define the percentages of each pick manually, and assign those


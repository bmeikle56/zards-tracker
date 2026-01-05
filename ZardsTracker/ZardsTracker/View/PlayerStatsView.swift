//
//  PlayerStatsView.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import SwiftUI

let playerData: [WizardsPlayerData] = [
    WizardsPlayerData(
        first_name: "Tre",
        last_name: "Johnson",
        position: "G",
        height: "6-6",
        weight: "190",
        draft_year: 2025,
        draft_round: 1,
        draft_number: 6
    ),
    WizardsPlayerData(
        first_name: "Keyshawn",
        last_name: "George",
        position: "F",
        height: "6-8",
        weight: "220",
        draft_year: 2024,
        draft_round: 1,
        draft_number: 23
    ),
    WizardsPlayerData(
        first_name: "Alex",
        last_name: "Sarr",
        position: "F",
        height: "7-1",
        weight: "220",
        draft_year: 2024,
        draft_round: 1,
        draft_number: 22
    ),
    WizardsPlayerData(
        first_name: "Bilal",
        last_name: "Coulibaly",
        position: "G",
        height: "6-7",
        weight: "190",
        draft_year: 2023,
        draft_round: 1,
        draft_number: 7
    ),
]

struct PlayerStatsView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                ForEach(playerData, id: \.self) { player in
                        Text("\(player.first_name) \(player.last_name)")
                            .foregroundStyle(Color.white)
                            .padding()
                            .frame(width: 200, height: 100)
                }
                .background(
                    HStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.gray.opacity(0.125))
                        Spacer()
                    }
                )
                .padding()
            }
        }
    }
}

#Preview {
    PlayerStatsView()
}

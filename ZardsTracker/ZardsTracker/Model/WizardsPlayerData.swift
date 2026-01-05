//
//  WizardsPlayerData.swift
//  ZardsTracker
//
//  Created by Braeden Meikle on 1/4/26.
//

import Foundation


/*
 
 {
   "data": [
     {
       "id": 37,
       "first_name": "Bradley",
       "last_name": "Beal",
       "position": "G",
       "height": "6-4",
       "weight": "207",
       "jersey_number": "0",
       "college": "Florida",
       "country": "USA",
       "draft_year": 2012,
       "draft_round": 1,
       "draft_number": 3,
       "team": {
         "id": 13,
         "conference": "West",
         "division": "Pacific",
         "city": "LA",
         "name": "Clippers",
         "full_name": "LA Clippers",
         "abbreviation": "LAC"
       }
     }
   ],
   "meta": {
     "per_page": 25
   }
 }
 */

struct WizardsPlayerDataResponse: Codable {
    let data: WizardsPlayerData
}

struct WizardsPlayerData: Codable, Hashable {
    let first_name: String
    let last_name: String
    let position: String
    let height: String
    let weight: String
    let draft_year: Int
    let draft_round: Int
    let draft_number: Int
}

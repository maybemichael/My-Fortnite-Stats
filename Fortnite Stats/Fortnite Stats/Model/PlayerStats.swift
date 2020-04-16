//
//  PlayerStats.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

struct PlayerStats: Codable {
    let userName: String
    let platformName: String
    let accountID: String
    let stats: Stats
    let lifeTimeStats: [LifeTimeStats]?
    
    enum CodingKeys: String, CodingKey {
        case userName = "epicUserHandle"
        case platformName = "platformNameLong"
        case accountID = "accountId"
        case stats
        case lifeTimeStats
    }
}











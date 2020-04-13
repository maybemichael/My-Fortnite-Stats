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
    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: PlayerKeys.self)
//
//        var lifeTimeStatsArray = [LifeTimeStats]()
//        if container.contains(.lifeTimeStats) {
//            var lifeTimeStatsContainer = try container.nestedUnkeyedContainer(forKey: .lifeTimeStats)
//
//            while lifeTimeStatsContainer.isAtEnd == false {
//                let stats = try lifeTimeStatsContainer.decode(LifeTimeStats.self)
//                lifeTimeStatsArray.append(stats)
//            }
//        }
//
//        userName = try container.decode(String.self, forKey: .userName)
//        platformName = try container.decode(String.self, forKey: .platformName)
//        accountID = try container.decode(String.self, forKey: .accountID)
//        lifeTimeStats = lifeTimeStatsArray
//    }
}











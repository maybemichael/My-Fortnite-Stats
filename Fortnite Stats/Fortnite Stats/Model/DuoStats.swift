//
//  DuoStats.swift
//  Fortnite Stats
//
//  Created by Michael on 4/11/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

struct DuoStats: Codable {
    let wins: String
    let kills: String
    let winRatio: String
    let killDeathRatio: String
    let matches: String
    let killsPerGame: String
    
    enum DuoStatsKeys: String, CodingKey {
        case wins = "top1"
        case kills
        case winRatio
        case killDeathRatio = "kd"
        case matches
        case killsPerGame = "kpg"
        
        enum DisplayKeys: String, CodingKey {
            case displayValue
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DuoStatsKeys.self)
        
        let kdContainer = try container.nestedContainer(keyedBy: DuoStatsKeys.DisplayKeys.self, forKey: .killDeathRatio)
        killDeathRatio = try kdContainer.decode(String.self, forKey: .displayValue)
        let top1Container = try container.nestedContainer(keyedBy: DuoStatsKeys.DisplayKeys.self, forKey: .wins)
        wins = try top1Container.decode(String.self, forKey: .displayValue)
        let killsContainer = try container.nestedContainer(keyedBy: DuoStatsKeys.DisplayKeys.self, forKey: .kills)
        kills = try killsContainer.decode(String.self, forKey: .displayValue)
        let winRatioContainer = try container.nestedContainer(keyedBy: DuoStatsKeys.DisplayKeys.self, forKey: .winRatio)
        winRatio = try winRatioContainer.decode(String.self, forKey: .displayValue)
        let matchesContainer = try container.nestedContainer(keyedBy: DuoStatsKeys.DisplayKeys.self, forKey: .matches)
        matches = try matchesContainer.decode(String.self, forKey: .displayValue)
        let kpgContainer = try container.nestedContainer(keyedBy: DuoStatsKeys.DisplayKeys.self, forKey: .killsPerGame)
        killsPerGame = try kpgContainer.decode(String.self, forKey: .displayValue)
    }
}

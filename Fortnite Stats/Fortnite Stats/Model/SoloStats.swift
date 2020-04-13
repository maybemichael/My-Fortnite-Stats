//
//  SoloStats.swift
//  Fortnite Stats
//
//  Created by Michael on 4/11/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

struct SoloStats: Codable {
    let wins: String
    let kills: String
    let winRatio: String
    let killDeathRatio: String
    let matches: String
    let killsPerGame: String
    
   
//    enum StatsKeys: String, CodingKey {
//        case stats
        
//    enum P2Keys: String, CodingKey {
//        case p2
        
        enum SoloStatsKeys: String, CodingKey {
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
//    }
//    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: SoloStatsKeys.self)
        
        
//        let statsContainer = try container.nestedContainer(keyedBy: StatsKeys.P2Keys.self, forKey: .stats)
//        let solosContainer = try container.nestedContainer(keyedBy: P2Keys.SoloStatsKeys.self, forKey: .p2)
        let kdContainer = try container.nestedContainer(keyedBy: SoloStatsKeys.DisplayKeys.self, forKey: .killDeathRatio)
        killDeathRatio = try kdContainer.decode(String.self, forKey: .displayValue)
        let top1Container = try container.nestedContainer(keyedBy: SoloStatsKeys.DisplayKeys.self, forKey: .wins)
        wins = try top1Container.decode(String.self, forKey: .displayValue)
        let killsContainer = try container.nestedContainer(keyedBy: SoloStatsKeys.DisplayKeys.self, forKey: .kills)
        kills = try killsContainer.decode(String.self, forKey: .displayValue)
        let winRatioContainer = try container.nestedContainer(keyedBy: SoloStatsKeys.DisplayKeys.self, forKey: .winRatio)
        winRatio = try winRatioContainer.decode(String.self, forKey: .displayValue)
        let matchesContainer = try container.nestedContainer(keyedBy: SoloStatsKeys.DisplayKeys.self, forKey: .matches)
        matches = try matchesContainer.decode(String.self, forKey: .displayValue)
        let kpgContainer = try container.nestedContainer(keyedBy: SoloStatsKeys.DisplayKeys.self, forKey: .killsPerGame)
        killsPerGame = try kpgContainer.decode(String.self, forKey: .displayValue)
    }
}

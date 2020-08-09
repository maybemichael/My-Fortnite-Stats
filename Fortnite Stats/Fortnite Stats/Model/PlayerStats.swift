//
//  PlayerStats.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

struct PlayerStats2: Codable {
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

struct PlayerStats: Codable {
    let epicUserHandle: String
    let platformName: String
    let accountID: String
    let avatar: String
    let soloWins: String
    let soloKills: String
    let soloWinRatio: String
    let soloMatches: String
    let soloKD: String
    let soloKillsPerGame: String
    let duoWins: String
    let duoKills: String
    let duoWinRatio: String
    let duoMatches: String
    let duoKD: String
    let duoKillsPerGame: String
    let squadWins: String
    let squadKills: String
    let squadWinRatio: String
    let squadMatches: String
    let squadKD: String
    let squadKillsPerGame: String
    let lifeTimeStats: [LifeTimeStats]
    
    enum PlayerKeys: String, CodingKey {
        case epicUserHandle
        case platformName
        case accountID = "accountId"
        case avatar
        case stats
        case lifeTimeStats
        
        enum SoloKeys: String, CodingKey {
            case solos = "p2"
            case top1
            case displayValue
            case kills
            case winRatio
            case matches
            case kd
            case kpg
        }
        enum DuoKeys: String, CodingKey {
            case duos = "p10"
            case top1
            case displayValue
            case kills
            case winRatio
            case matches
            case kd
            case kpg
        }
        
        enum SquadKeys: String, CodingKey {
            case squads = "p9"
            case top1
            case displayValue
            case kills
            case winRatio
            case matches
            case kd
            case kpg
        }
    }
    
    init(from decoder: Decoder) throws {
        let playerContainer = try decoder.container(keyedBy: PlayerKeys.self)
        let soloStatsContainer = try playerContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .stats)
        let solosContainer = try soloStatsContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .solos)
        let duoStatsContainer = try playerContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .stats)
        let duosContainer = try duoStatsContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .duos)
        let squadStatsContainer = try playerContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .stats)
        let squadsContainer = try squadStatsContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .squads)
        
        let soloTop1Container = try solosContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .top1)
        let soloKillsContainer = try solosContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .kills)
        let soloWinsRatioContainer = try solosContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .winRatio)
        let soloMatchesContainer = try solosContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .matches)
        let soloKDContainer = try solosContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .kd)
        let soloKPGContainer = try solosContainer.nestedContainer(keyedBy: PlayerKeys.SoloKeys.self, forKey: .kpg)
        
        let duoTop1Container = try duosContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .top1)
        let duoKillsContainer = try duosContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .kills)
        let duoWinsRatioContainer = try duosContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .winRatio)
        let duoMatchesContainer = try duosContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .matches)
        let duoKDContainer = try duosContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .kd)
        let duoKPGContainer = try duosContainer.nestedContainer(keyedBy: PlayerKeys.DuoKeys.self, forKey: .kpg)
        
        let squadTop1Container = try squadsContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .top1)
        let squadKillsContainer = try squadsContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .kills)
        let squadWinsRatioContainer = try squadsContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .winRatio)
        let squadMatchesContainer = try squadsContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .matches)
        let squadKDContainer = try squadsContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .kd)
        let squadKPGContainer = try squadsContainer.nestedContainer(keyedBy: PlayerKeys.SquadKeys.self, forKey: .kpg)
        
        self.soloKillsPerGame = try soloKPGContainer.decode(String.self, forKey: .displayValue)
        self.soloKD = try soloKDContainer.decode(String.self, forKey: .displayValue)
        self.soloMatches = try soloMatchesContainer.decode(String.self, forKey: .displayValue)
        self.soloWinRatio = try soloWinsRatioContainer.decode(String.self, forKey: .displayValue)
        self.soloKills = try soloKillsContainer.decode(String.self, forKey: .displayValue)
        self.soloWins = try soloTop1Container.decode(String.self, forKey: .displayValue)
        
        self.duoWins = try duoTop1Container.decode(String.self, forKey: .displayValue)
        self.duoKills = try duoKillsContainer.decode(String.self, forKey: .displayValue)
        self.duoWinRatio = try duoWinsRatioContainer.decode(String.self, forKey: .displayValue)
        self.duoMatches = try duoMatchesContainer.decode(String.self, forKey: .displayValue)
        self.duoKD = try duoKDContainer.decode(String.self, forKey: .displayValue)
        self.duoKillsPerGame = try duoKPGContainer.decode(String.self, forKey: .displayValue)
        
        self.squadWins = try squadTop1Container.decode(String.self, forKey: .displayValue)
        self.squadKills = try squadKillsContainer.decode(String.self, forKey: .displayValue)
        self.squadWinRatio = try squadWinsRatioContainer.decode(String.self, forKey: .displayValue)
        self.squadMatches = try squadMatchesContainer.decode(String.self, forKey: .displayValue)
        self.squadKD = try squadKDContainer.decode(String.self, forKey: .displayValue)
        self.squadKillsPerGame = try squadKPGContainer.decode(String.self, forKey: .displayValue)
        
        self.epicUserHandle = try playerContainer.decode(String.self, forKey: .epicUserHandle)
        self.platformName = try playerContainer.decode(String.self, forKey: .platformName)
        self.accountID = try playerContainer.decode(String.self, forKey: .accountID)
        self.avatar = try playerContainer.decode(String.self, forKey: .avatar)
        self.lifeTimeStats = try playerContainer.decode([LifeTimeStats].self, forKey: .lifeTimeStats)
    }
}









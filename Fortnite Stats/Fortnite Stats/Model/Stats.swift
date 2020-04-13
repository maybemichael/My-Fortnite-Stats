//
//  Stats.swift
//  Fortnite Stats
//
//  Created by Michael on 4/11/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

struct Stats: Codable {
    let solos: SoloStats
    let duos: DuoStats
    let squads: SquadStats
    
    enum CodingKeys: String, CodingKey {
        case solos = "p2"
        case duos = "p10"
        case squads = "p9"
    }
}

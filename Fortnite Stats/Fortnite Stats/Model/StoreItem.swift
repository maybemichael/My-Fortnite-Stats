//
//  StoreItem.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

struct StoreItem: Codable {
    let imageURL: URL
    let name: String
    let rarity: String
    let vBucks: Int
    
    enum CodingKeys: String, CodingKey {
        case imageURL = "imageUrl"
        case name = "name"
        case rarity = "rarity"
        case vBucks = "vBucks"
    }
}

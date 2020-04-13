//
//  LifeTimeStats.swift
//  Fortnite Stats
//
//  Created by Michael on 4/11/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

struct LifeTimeStats: Codable {
    var key: String
    var value: String
    
    enum LifeTimeKeys: String, CodingKey {
        case key
        case value
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: LifeTimeKeys.self)
        
        key = try container.decode(String.self, forKey: .key)
        value = try container.decode(String.self, forKey: .value)
    }
}

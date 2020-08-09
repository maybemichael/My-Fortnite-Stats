//
//  Constants.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
    case delete = "DELETE"
}

enum Platform: String {
    case kbm
    case gamepad
    case touch
}

enum GameMode: String {
    case solos
    case duos
    case squads
    case lifetime
}

//
//  NetworkDataLoader.swift
//  Fortnite Stats
//
//  Created by Michael McGrath on 8/10/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
}

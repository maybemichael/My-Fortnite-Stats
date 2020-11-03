//
//  MockNetworkLoader.swift
//  Fortnite StatsTests
//
//  Created by Michael McGrath on 8/10/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation
@testable import Fortnite_Stats

struct MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
}

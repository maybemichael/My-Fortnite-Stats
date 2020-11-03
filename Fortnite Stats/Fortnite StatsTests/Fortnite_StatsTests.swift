//
//  Fortnite_StatsTests.swift
//  Fortnite StatsTests
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import XCTest
@testable import Fortnite_Stats

class Fortnite_StatsTests: XCTestCase {

    var session: URLSession!
    
    override func setUpWithError() throws {
        try! super.setUpWithError()
        session = URLSession(configuration: .default)
    }

    override func tearDownWithError() throws {
        session = nil
        try! super.tearDownWithError()
    }
    
    func testPlayerStatsSearchResponseCode() {
        let url = URL(string: "https://api.fortnitetracker.com/v1/profile/kbm/ninja")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("460b36f0-565e-474c-8eac-2ef11912d3a1", forHTTPHeaderField: "TRN-Api-Key")
        let expect = expectation(description: "HTTP Response Status Code 200")
        session.dataTask(with: request) { data, response, error in
            if let error = error {
                XCTFail("Error: \(error.localizedDescription)")
                return
            }
            if let response = response as? HTTPURLResponse {
                if response.statusCode == 200 {
                    expect.fulfill()
                } else {
                    XCTFail("Status Code: \(response)")
                }
            }
        }.resume()
        wait(for: [expect], timeout: 3)
    }

    func testDecodePlayerStats() throws {
        let bundle = Bundle(for: type(of: self))
        let url = Bundle.main.url(forResource: "TestJSON", withExtension: "json")
        let data = try! Data(contentsOf: url!)
        let stats = try! JSONDecoder().decode(PlayerStats.self, from: data)
        XCTAssertNotNil(stats)
        XCTAssertEqual(stats.epicUserHandle, "Ninja")
        XCTAssertEqual(stats.avatar, "https://trackercdn.com/legacycdn/fortnite/2B5D1195_small.png")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

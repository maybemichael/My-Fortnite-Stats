//
//  StatsController.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation

class StatsController {
    
    let baseURL = URL(string: "https://api.fortnitetracker.com/v1/")!
    let apiKey = "460b36f0-565e-474c-8eac-2ef11912d3a1"
    let headerField = "TRN-Api-Key"
    
    var currentStore: [StoreItem]?
    
    var playerStats: PlayerStats?
    
    func getStats(platform: Platform, accountID: String, completion: @escaping (Error?, PlayerStats?) -> Void) {
        
        let requestURL = baseURL.appendingPathComponent("profile").appendingPathComponent(platform.rawValue).appendingPathComponent(accountID)

        var request = URLRequest(url: requestURL)
        request.httpMethod = HTTPMethod.get.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue(apiKey, forHTTPHeaderField: headerField)

        print(request)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let response = response as? HTTPURLResponse, response.statusCode != 200 {
                print("Bad Status Code: \(response)")
                DispatchQueue.main.async {
                    completion(error, nil)
                }
                return
            }
            if let error = error {
                print("Error fetching player stats: \(error)")
                DispatchQueue.main.async {
                    completion(error, nil)
                }
                return
            }
            guard let data = data else {
                print("No data returned from data task.")
                DispatchQueue.main.async {
                    completion(error, nil)
                }
                return
            }
            do {
                let decoder = JSONDecoder()
                let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                print(json)
                let playerStats = try decoder.decode(PlayerStats.self, from: data)
                self.playerStats = playerStats
                print("This is kills per game: \(playerStats.stats.squads.killsPerGame)")
                print("This is total kills: \(playerStats.stats.squads.kills)")
                print("This is K/D: \(playerStats.stats.squads.killDeathRatio)")
                print("This is total matches: \(playerStats.stats.squads.matches)")
                print("This is total wins: \(playerStats.stats.squads.wins)")
                print("This is win ratio: \(playerStats.stats.squads.winRatio)")
                DispatchQueue.main.async {
                    completion(nil, playerStats)
                }
                return
            } catch {
                print("Error decoding player stats object: \(error)")
                DispatchQueue.main.async {
                    completion(error, nil)
                }
                return
            }
        }.resume()
    }
    
    func getCurrentStore(completion: @escaping ([StoreItem]?) -> Void) {
        
        let requestURL = baseURL.appendingPathComponent("store")
        
        var request = URLRequest(url: requestURL)
        request.httpMethod = HTTPMethod.get.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue(apiKey, forHTTPHeaderField: headerField)
        
        print(request)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let response = response as? HTTPURLResponse, response.statusCode != 200 {
                print("Bad Status Code: \(response)")
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            if let error = error {
                print("Error fetching current store: \(error)")
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            guard let data = data else {
                print("No data returned from data task.")
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                print(json)
                let fetchedStore = try JSONDecoder().decode([StoreItem].self, from: data)
                self.currentStore = fetchedStore
                print("This is the count of the store items: \(self.currentStore?.count)")
                print(self.currentStore?[1].imageURL)
                print(self.currentStore?.first?.vBucks)
                DispatchQueue.main.async {
                    completion(fetchedStore)
                }
                return
            } catch {
                print("Error decoding Store Items: \(error)")
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
        }.resume()
    }
}

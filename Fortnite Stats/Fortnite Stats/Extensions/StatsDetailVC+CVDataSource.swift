//
//  Ext+CollectionViewDataSource.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

extension StatsDetailViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StatsDetailCell", for: indexPath) as? StatsDetailCollectionViewCell else { return UICollectionViewCell() }
        
        let player = statsController?.playerStats
        cell.player = player
        
        switch indexPath.item {
        case 0:
            cell.gameMode = .solos
        case 1:
            cell.gameMode = .duos
        case 2:
            cell.gameMode = .squads
        case 3:
            cell.gameMode = .lifetime
        default:
            cell.gameMode = .lifetime
        }
        
        return cell
    }
}

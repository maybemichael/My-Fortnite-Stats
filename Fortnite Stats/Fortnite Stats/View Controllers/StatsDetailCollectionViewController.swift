//
//  StatsDetailCollectionViewController.swift
//  Fortnite Stats
//
//  Created by Michael on 4/12/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

private let reuseIdentifier = "StatsDetailCell"

class StatsDetailCollectionViewController: UICollectionViewController {

    var statsController: StatsController? {
        didSet {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? StatsDetailCollectionViewCell else { return UICollectionViewCell() }
    
        let player = statsController?.playerStats
        cell.player = player
        
//        switch indexPath.section {
//        case 0:
//            cell.gameModeLabel.text = "Solos"
//            cell.gameMode = .solos
//            cell.totalWinsLabel.text = player?.stats.solos.wins
//            cell.winRatioLabel.text = player?.stats.solos.winRatio
//            cell.totalKillsLabel.text = player?.stats.solos.kills
//            cell.kdLabel.text = player?.stats.solos.killDeathRatio
//            cell.kpgLabel.text = player?.stats.solos.killsPerGame
//            cell.totalMatchesLabel.text = player?.stats.solos.matches
//        case 1:
//            cell.gameModeLabel.text = "Duos"
//            cell.gameMode = .duos
//            cell.totalWinsLabel.text = player?.stats.duos.wins
//            cell.winRatioLabel.text = player?.stats.duos.winRatio
//            cell.totalKillsLabel.text = player?.stats.duos.kills
//            cell.kdLabel.text = player?.stats.duos.killDeathRatio
//            cell.kpgLabel.text = player?.stats.duos.killsPerGame
//            cell.totalMatchesLabel.text = player?.stats.duos.matches
//        case 2:
//            cell.gameModeLabel.text = "Squads"
//            cell.gameMode = .squads
//            cell.totalWinsLabel.text = player?.stats.squads.wins
//            cell.winRatioLabel.text = player?.stats.squads.winRatio
//            cell.totalKillsLabel.text = player?.stats.squads.kills
//            cell.kdLabel.text = player?.stats.squads.killDeathRatio
//            cell.kpgLabel.text = player?.stats.squads.killsPerGame
//            cell.totalMatchesLabel.text = player?.stats.squads.matches
//        case 3:
//            cell.gameModeLabel.text = "Lifetime Stats"
//            cell.gameMode = .lifetime
//            cell.totalWinsLabel.text = player?.stats.squads.wins
//            cell.winRatioLabel.text = player?.stats.squads.winRatio
//            cell.totalKillsLabel.text = player?.stats.squads.kills
//            cell.kdLabel.text = player?.stats.squads.killDeathRatio
//            cell.kpgLabel.text = player?.stats.squads.killsPerGame
//            cell.totalMatchesLabel.text = player?.stats.squads.matches
//        default:
//            cell.gameMode = .lifetime
//        }
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

//
//  StatsDetailViewController.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

class StatsDetailViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    var statsController: StatsController? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var epicUsernameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        updateViews()
    }
    
    func updateViews() {
        guard let player = statsController?.playerStats, isViewLoaded else { return }
        epicUsernameLabel.text = player.userName

    }
}

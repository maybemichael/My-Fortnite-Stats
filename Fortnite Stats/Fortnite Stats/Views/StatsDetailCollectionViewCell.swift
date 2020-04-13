//
//  StatsDetailCollectionViewCell.swift
//  Fortnite Stats
//
//  Created by Michael on 4/12/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

class StatsDetailCollectionViewCell: UICollectionViewCell {
    
    var player: PlayerStats? {
        didSet {
            updateViews()
        }
    }
    
    var gameMode: GameMode? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var gameModeLabel: UILabel!
    @IBOutlet weak var winsDescriptionLabel: UILabel!
    @IBOutlet weak var totalWinsLabel: UILabel!
    @IBOutlet weak var winRatioDescriptionLabel: UILabel!
    @IBOutlet weak var winRatioLabel: UILabel!
    @IBOutlet weak var totalKillsDescriptionLabel: UILabel!
    @IBOutlet weak var totalKillsLabel: UILabel!
    @IBOutlet weak var kdDescriptionLabel: UILabel!
    @IBOutlet weak var kdLabel: UILabel!
    @IBOutlet weak var totalMatchesDescriptionLabel: UILabel!
    @IBOutlet weak var totalMatchesLabel: UILabel!
    @IBOutlet weak var kpgDescriptionLabel: UILabel!
    @IBOutlet weak var kpgLabel: UILabel!
    @IBOutlet weak var top3DescriptionLabel: UILabel!
    @IBOutlet weak var top6DescriptionLabel: UILabel!
    @IBOutlet weak var top3Label: UILabel!
    @IBOutlet weak var top6Label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageCoverView: UIView!
    
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        
        // 1
        let standardHeight = FeaturedCellLayoutConstants.Cell.standardHeight
        let featuredHeight = FeaturedCellLayoutConstants.Cell.featuredHeight
        
        // 2
        let delta = 1 - (
            (featuredHeight - frame.height) / (featuredHeight - standardHeight)
        )
        
        // 3
        let minAlpha: CGFloat = 0.3
        let maxAlpha: CGFloat = 0.75
        imageCoverView.alpha = maxAlpha - (delta * (maxAlpha - minAlpha))
        
        let scale = max(delta, 0.5)
        gameModeLabel.transform = CGAffineTransform(scaleX: scale, y: scale)
        
        winsDescriptionLabel.alpha = delta
        totalWinsLabel.alpha = delta
        winRatioDescriptionLabel.alpha = delta
        winRatioLabel.alpha = delta
        totalKillsDescriptionLabel.alpha = delta
        totalKillsLabel.alpha = delta
        kdDescriptionLabel.alpha = delta
        kdLabel.alpha = delta
        totalMatchesDescriptionLabel.alpha = delta
        totalMatchesLabel.alpha = delta
        kpgDescriptionLabel.alpha = delta
        kpgLabel.alpha = delta
        top3DescriptionLabel.alpha = delta
        top3Label.alpha = delta
        top6DescriptionLabel.alpha = delta
        top6Label.alpha = delta
    }
    
    func updateViews() {
        guard let player = player else { return }
        switch gameMode {
        case .solos:
            gameModeLabel.text = "Solos"
            imageView.image = UIImage(named: "MySkin")
            totalWinsLabel.text = player.stats.solos.wins
            winRatioLabel.text = player.stats.solos.winRatio
            totalKillsLabel.text = player.stats.solos.kills
            kdLabel.text = player.stats.solos.killDeathRatio
            kpgLabel.text = player.stats.solos.killsPerGame
            totalMatchesLabel.text = player.stats.solos.matches
            top3DescriptionLabel.isHidden = true
            top6DescriptionLabel.isHidden = true
            top3Label.isHidden = true
            top6Label.isHidden = true
        case .duos:
            gameModeLabel.text = "Duos"
            imageView.image = UIImage(named: "SkullTrooper")
            totalWinsLabel.text = player.stats.duos.wins
            winRatioLabel.text = player.stats.duos.winRatio
            totalKillsLabel.text = player.stats.duos.kills
            kdLabel.text = player.stats.duos.killDeathRatio
            kpgLabel.text = player.stats.duos.killsPerGame
            totalMatchesLabel.text = player.stats.duos.matches
            top3DescriptionLabel.isHidden = true
            top6DescriptionLabel.isHidden = true
            top3Label.isHidden = true
            top6Label.isHidden = true
        case .squads:
            gameModeLabel.text = "Squads"
            imageView.image = UIImage(named: "FortniteBlackKnight")
            totalWinsLabel.text = player.stats.squads.wins
            winRatioLabel.text = player.stats.squads.winRatio
            totalKillsLabel.text = player.stats.squads.kills
            kdLabel.text = player.stats.squads.killDeathRatio
            kpgLabel.text = player.stats.squads.killsPerGame
            totalMatchesLabel.text = player.stats.squads.matches
            top3DescriptionLabel.isHidden = true
            top6DescriptionLabel.isHidden = true
            top3Label.isHidden = true
            top6Label.isHidden = true
        case .lifetime:
            gameModeLabel.text = "Lifetime Stats"
            imageView.image = UIImage(named: "RenegadeRaider")
            totalWinsLabel.text = player.lifeTimeStats?[8].value
            winRatioLabel.text = player.lifeTimeStats?[9].value
            totalKillsLabel.text = player.lifeTimeStats?[10].value
            kdLabel.text = player.lifeTimeStats?[11].value
            kpgLabel.text = player.stats.squads.killsPerGame
            totalMatchesLabel.text = player.lifeTimeStats?[7].value
            top3DescriptionLabel.isHidden = false
            top6DescriptionLabel.isHidden = false
            top3Label.isHidden = false
            top6Label.isHidden = false
            top3Label.text = player.lifeTimeStats?[1].value
            top6Label.text = player.lifeTimeStats?[2].value
        case .none:
            break
        }
        imageView.layer.cornerRadius = 5
        imageCoverView.layer.cornerRadius = 5
        self.layer.cornerRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.borderWidth = 3
        self.layer.shadowOffset = CGSize(width: 2.0, height: 4.0)
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false
    }
}

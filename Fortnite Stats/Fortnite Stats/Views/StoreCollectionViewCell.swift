//
//  StoreCollectionViewCell.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

class StoreCollectionViewCell: UICollectionViewCell {
    
    var item: StoreItem? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var vBucksImageView: UIImageView!
    @IBOutlet weak var vBucksLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    func updateViews() {
        guard
            let item = item
            else { return }
        
        vBucksImageView.layer.cornerRadius = 12
        vBucksLabel.text = "\(item.vBucks)"
        itemNameLabel.text = item.name
        self.layer.cornerRadius = 8
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
        self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false
    }
}

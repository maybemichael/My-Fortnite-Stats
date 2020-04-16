//
//  StoreCollectionViewController.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ItemCell"

class StoreCollectionViewController: UICollectionViewController {

    let statsController = StatsController()
    let cache = Cache<String, UIImage>()
    let photoFetchQueue = OperationQueue()
    var operations = [String : Operation]()
    
    let storeDetailView = UIView()
    let detailImageView = UIImageView()
    let itemNameLabel = UILabel()
    let vBucksImageView = UIImageView()
    let vBucksLabel = UILabel()
    
    
    @IBOutlet weak var itemDetailView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statsController.getCurrentStore { _ in
            DispatchQueue.main.async {
                self.collectionView.reloadData()
                self.setupItemDetailView()
                self.storeDetailView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.hideItemDetailView)))
            }
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        if storeDetailView.isHidden == false {
            storeDetailView.isHidden = true
        }
    }
    
    @objc func hideItemDetailView() {
        storeDetailView.isHidden = true
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return statsController.currentStore?.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? StoreCollectionViewCell else { return UICollectionViewCell() }
    
        let item = statsController.currentStore?[indexPath.item]
        cell.item = item
        loadImage(forCell: cell, forItemAt: indexPath)

        return cell
    }

    // MARK: Image Cache
    
    private func loadImage(forCell cell: StoreCollectionViewCell, forItemAt indexPath: IndexPath) {
        guard let shopItem = statsController.currentStore?[indexPath.item] else { return }
        
        // Check for image in cache
        if let cachedImage = cache.value(for: shopItem.name) {
            cell.itemImageView?.image = cachedImage
            return
        }
        
        // Start an operation to fetch image data
        let fetchOp = StoreItemPhotoOperation(item: shopItem)
        let cacheOp = BlockOperation {
            if let image = fetchOp.image {
                self.cache.cache(value: image, for: shopItem.name)
            }
        }
        
        let completionOp = BlockOperation {
            defer { self.operations.removeValue(forKey: shopItem.name) }
            
            if let currentIndexPath = self.collectionView?.indexPath(for: cell),
                currentIndexPath != indexPath {
                return // Cell has been reused
            }
            
            if let image = fetchOp.image {
                cell.itemImageView?.image = image
            }
        }
        
        cacheOp.addDependency(fetchOp)
        completionOp.addDependency(fetchOp)
        
        photoFetchQueue.addOperation(fetchOp)
        photoFetchQueue.addOperation(cacheOp)
        OperationQueue.main.addOperation(completionOp)
        
        operations[shopItem.name] = fetchOp
    }
    
    func setupItemDetailView() {
        storeDetailView.translatesAutoresizingMaskIntoConstraints = false
        detailImageView.translatesAutoresizingMaskIntoConstraints = false
        itemNameLabel.translatesAutoresizingMaskIntoConstraints = false
        vBucksImageView.translatesAutoresizingMaskIntoConstraints = false
        vBucksLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(storeDetailView)
        storeDetailView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        storeDetailView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        storeDetailView.widthAnchor.constraint(equalToConstant: view.bounds.width - 80).isActive = true
        storeDetailView.heightAnchor.constraint(equalToConstant: view.bounds.height / 2).isActive = true
        storeDetailView.backgroundColor = #colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1)
        
        storeDetailView.addSubview(itemNameLabel)
        storeDetailView.addSubview(detailImageView)
        storeDetailView.addSubview(vBucksLabel)
        storeDetailView.addSubview(vBucksImageView)
        vBucksLabel.textAlignment = .center
        vBucksLabel.font = UIFont(name: "BurbankBigCondensed-Black", size: 40)
        vBucksLabel.textColor = #colorLiteral(red: 1, green: 0.9471729398, blue: 0.3208206296, alpha: 1)
        vBucksLabel.textAlignment = .center
        
        vBucksImageView.image = UIImage(named: "VBuck")
        vBucksImageView.layer.cornerRadius = vBucksImageView.frame.height / 2
        vBucksImageView.layer.masksToBounds = false
        vBucksImageView.clipsToBounds = true
        vBucksImageView.contentMode = .scaleAspectFit
        vBucksImageView.backgroundColor = #colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1)
        
        vBucksLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vBucksImageView.heightAnchor.constraint(equalTo: vBucksLabel.heightAnchor).isActive = true
        vBucksImageView.widthAnchor.constraint(equalTo: vBucksImageView.heightAnchor).isActive = true
        let vBucksStackView = UIStackView(arrangedSubviews: [vBucksImageView, vBucksLabel])
        storeDetailView.addSubview(vBucksStackView)
        vBucksStackView.translatesAutoresizingMaskIntoConstraints = false
        vBucksStackView.axis = .horizontal
        vBucksStackView.centerXAnchor.constraint(equalTo: storeDetailView.centerXAnchor).isActive = true
        vBucksStackView.backgroundColor = #colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1)
        
        detailImageView.leadingAnchor.constraint(equalTo: storeDetailView.leadingAnchor, constant: 20).isActive = true
        detailImageView.trailingAnchor.constraint(equalTo: storeDetailView.trailingAnchor, constant: -20).isActive = true
        detailImageView.topAnchor.constraint(equalTo: storeDetailView.topAnchor, constant: 80).isActive = true
        detailImageView.bottomAnchor.constraint(equalTo: storeDetailView.bottomAnchor, constant: -100).isActive = true
        
        
        itemNameLabel.bottomAnchor.constraint(equalTo: detailImageView.topAnchor, constant: -8).isActive = true
        itemNameLabel.leadingAnchor.constraint(equalTo: storeDetailView.leadingAnchor, constant: 40).isActive = true
        itemNameLabel.trailingAnchor.constraint(equalTo: storeDetailView.trailingAnchor, constant: -40).isActive = true
        itemNameLabel.text = "Name"
        itemNameLabel.textAlignment = .center
        itemNameLabel.font = UIFont(name: "BurbankBigCondensed-Black", size: 40)
        itemNameLabel.textColor = #colorLiteral(red: 1, green: 0.9471729398, blue: 0.3208206296, alpha: 1)

        vBucksStackView.topAnchor.constraint(equalTo: detailImageView.bottomAnchor, constant: 20).isActive = true
        vBucksStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vBucksStackView.widthAnchor.constraint(equalTo: detailImageView.widthAnchor, multiplier: 0.5).isActive = true
        vBucksImageView.layer.cornerRadius = 25
        
        storeDetailView.isHidden = true
        storeDetailView.layer.cornerRadius = 8
        storeDetailView.layer.shadowColor = UIColor.black.cgColor
        storeDetailView.layer.borderWidth = 1.0
        storeDetailView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        storeDetailView.layer.shadowRadius = 8
        storeDetailView.layer.shadowOpacity = 1.0
        storeDetailView.layer.masksToBounds = false
    }
    
    // MARK: UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        storeDetailView.isHidden = false
        guard
            let item = statsController.currentStore?[indexPath.item],
            let data = try? Data(contentsOf: item.imageURL)
            else { return }
        itemNameLabel.text = item.name
        vBucksLabel.text = "\(item.vBucks)"
        DispatchQueue.main.async {
            self.detailImageView.image = UIImage(data: data)
        }
    }
    
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

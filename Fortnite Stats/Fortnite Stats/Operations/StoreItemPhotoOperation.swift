//
//  StoreItemPhotoOperation.swift
//  Fortnite Stats
//
//  Created by Michael on 4/9/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

class StoreItemPhotoOperation: ConcurrentOperation {
    
    var dataTask: URLSessionDataTask?
    
    var image: UIImage?
    
    let session: URLSession
    
    let item: StoreItem
    
    init(item: StoreItem, session: URLSession = URLSession.shared) {
        self.item = item
        self.session = session
        super.init()
    }
    
    override func start() {
        state = .isExecuting
        let url = item.imageURL
        
        let task = session.dataTask(with: url) { (data, response, error) in
            defer { self.state = .isFinished }
            if self.isCancelled { return }
            if let error = error {
                NSLog("Error fetching data for \(self.item): \(error)")
                return
            }
            
            if let data = data {
                self.image = UIImage(data: data)
            }
        }
        task.resume()
        dataTask = task
    }
    
    override func cancel() {
        dataTask?.cancel()
        super.cancel()
    }
}

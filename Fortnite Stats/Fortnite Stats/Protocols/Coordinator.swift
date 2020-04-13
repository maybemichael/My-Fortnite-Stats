//
//  Coordinator.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

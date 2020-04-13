//
//  AccountSearchViewController.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit

class AccountSearchViewController: UIViewController, Storyboarded, UITextFieldDelegate {
    
    weak var coordinator: MainCoordinator?
    let statsController = StatsController()
    var platform: Platform = .pc
    var searchedPlayer: PlayerStats? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var xboxPlatformButton: UIButton!
    @IBOutlet weak var psnPlatformButton: UIButton!
    @IBOutlet weak var pcPlatformButton: UIButton!
    @IBOutlet weak var underlineView: UIView!
    @IBOutlet weak var totalWinsLabel: UILabel!
    @IBOutlet weak var matchesPlayedLabel: UILabel!
    @IBOutlet weak var totalKillsLabel: UILabel!
    @IBOutlet weak var kdRatioLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var platformLabel: UILabel!
    @IBOutlet weak var winsDescriptionLabel: UILabel!
    @IBOutlet weak var mpDescriptionLabel: UILabel!
    @IBOutlet weak var tkDescriptionLabel: UILabel!
    @IBOutlet weak var kdDescriptionLabel: UILabel!
    @IBOutlet weak var accountDescriptionLabel: UILabel!
    @IBOutlet weak var platformDescriptionLabel: UILabel!
    @IBOutlet weak var moreStatsButton: UIButton!
    @IBOutlet weak var searchButton2: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appLaunch()
    }
    
    func appLaunch() {
        searchTextField.delegate = self
        underlineView.layer.cornerRadius = 40
        searchTextField.attributedPlaceholder = NSAttributedString(string: "Enter Account Name:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        searchTextField.textColor = UIColor.white
        searchTextField.font = UIFont(name: "Montserrat-Medium", size: 17.0)
        pcPlatformButton.setImage(UIImage(named: "Epic Games Selected"), for: .normal)
        let searchButton = UIButton()
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchButton)
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = #colorLiteral(red: 1, green: 0.943190515, blue: 0.376380682, alpha: 1)
        searchTextField.rightView = searchButton
        searchTextField.rightViewMode = .always
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
    }
    
    func updateViews() {
        guard
            let wins = searchedPlayer?.lifeTimeStats?[8].value,
            let matches = searchedPlayer?.lifeTimeStats?[7].value,
            let kills = searchedPlayer?.lifeTimeStats?[10].value,
            let kdRatio = searchedPlayer?.lifeTimeStats?[11].value
            else { return }
        
        self.moreStatsButton.isHidden = false
        self.accountDescriptionLabel.isHidden = false
        self.platformDescriptionLabel.isHidden = false
        self.winsDescriptionLabel.isHidden = false
        self.mpDescriptionLabel.isHidden = false
        self.tkDescriptionLabel.isHidden = false
        self.kdDescriptionLabel.isHidden = false
        self.userNameLabel.text = searchedPlayer?.userName
        self.totalWinsLabel.text = (wins)
        self.matchesPlayedLabel.text = matches
        self.totalKillsLabel.text = kills
        self.kdRatioLabel.text = kdRatio
        switch platform {
        case .pc:
            self.platformLabel.text = "PC"
        case .psn:
            self.platformLabel.text = "Playstation"
        case .xbox:
            self.platformLabel.text = "Xbox"
        }
    }

    func platformSelected() {
        switch platform {
        case .pc:
            pcPlatformButton.setImage(UIImage(named: "Epic Games Selected"), for: .normal)
            psnPlatformButton.setImage(UIImage(named: "PSN Icon"), for: .normal)
            xboxPlatformButton.setImage(UIImage(named: "Xbox Icon"), for: .normal)
            
            pcPlatformButton.setTitleColor(#colorLiteral(red: 1, green: 0.9471729398, blue: 0.3208206296, alpha: 1), for: .normal)
            psnPlatformButton.setTitleColor(#colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1), for: .normal)
            xboxPlatformButton.setTitleColor(#colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1), for: .normal)
        case .psn:
            pcPlatformButton.setImage(UIImage(named: "Epic Games Icon"), for: .normal)
            psnPlatformButton.setImage(UIImage(named: "PSN Selected"), for: .normal)
            xboxPlatformButton.setImage(UIImage(named: "Xbox Icon"), for: .normal)
            
            pcPlatformButton.setTitleColor(#colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1), for: .normal)
            psnPlatformButton.setTitleColor(#colorLiteral(red: 1, green: 0.9471729398, blue: 0.3208206296, alpha: 1), for: .normal)
            xboxPlatformButton.setTitleColor(#colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1), for: .normal)
        case .xbox:
            pcPlatformButton.setImage(UIImage(named: "Epic Games Icon"), for: .normal)
            psnPlatformButton.setImage(UIImage(named: "PSN Icon"), for: .normal)
            xboxPlatformButton.setImage(UIImage(named: "Xbox Selected"), for: .normal)
            
            pcPlatformButton.setTitleColor(#colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1), for: .normal)
            psnPlatformButton.setTitleColor(#colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1), for: .normal)
            xboxPlatformButton.setTitleColor(#colorLiteral(red: 1, green: 0.9471729398, blue: 0.3208206296, alpha: 1), for: .normal)
        }
    }
    
    @objc func searchButtonTapped() {
        searchTextField.resignFirstResponder()
        guard let searched = searchTextField.text, !searched.isEmpty else { return }
        statsController.getStats(platform: platform, accountID: searched) { (_, searchedStats) in
            self.searchedPlayer = searchedStats
        }
        
        DispatchQueue.main.async {
            self.updateViews()
        }
    }
    
    // MARK: IB Actions
    
    @IBAction func pcButtonTapped(_ sender: Any) {
        platform = .pc
        platformSelected()
    }
    
    @IBAction func psnButtonTapped(_ sender: Any) {
        platform = .psn
        platformSelected()
    }
    
    @IBAction func xboxButtonTapped(_ sender: Any) {
        platform = .xbox
        platformSelected()
    }
    
    
    // MARK: Text Field Delegate Methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.resignFirstResponder()
        guard let searched = searchTextField.text, !searched.isEmpty else { return false }
        statsController.getStats(platform: platform, accountID: searched) { (_, searchedStats) in
            self.searchedPlayer = searchedStats
        }
        
        DispatchQueue.main.async {
            self.updateViews()
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "StatsDetailSegue" {
            guard let statsDetailVC = segue.destination as? StatsDetailViewController else { return }
            statsDetailVC.statsController = statsController
        }
    }
}

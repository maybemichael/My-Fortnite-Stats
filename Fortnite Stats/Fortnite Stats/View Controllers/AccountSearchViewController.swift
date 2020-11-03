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
    var platform: Platform = .kbm
    var searchedPlayer: PlayerStats? {
        didSet {
            updateViews()
        }
    }
    
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
    @IBOutlet weak var platformControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchSetupViews()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func launchSetupViews() {
        searchTextField.delegate = self
        underlineView.layer.cornerRadius = 40
        searchTextField.attributedPlaceholder = NSAttributedString(string: "Enter Epic Account ID:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        searchTextField.textColor = UIColor.white
        searchTextField.font = UIFont(name: "Montserrat-Medium", size: 17.0)
        let searchButton = UIButton()
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchButton)
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = #colorLiteral(red: 1, green: 0.943190515, blue: 0.376380682, alpha: 1)
        searchTextField.rightView = searchButton
        searchTextField.rightViewMode = .always
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
        moreStatsButton.layer.cornerRadius = 8
        moreStatsButton.layer.borderWidth = 2.0
        platformControl.translatesAutoresizingMaskIntoConstraints = false
        platformControl.layer.shadowColor = UIColor.black.cgColor
        platformControl.layer.shadowRadius = 2
        platformControl.layer.shadowOpacity = 0.5
        platformControl.setImage(UIImage(named: "Epic Games Icon"), forSegmentAt: 0)
        platformControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0, green: 0.1154924706, blue: 0.193021059, alpha: 1)], for: .normal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        searchTextField.resignFirstResponder()
    }
    
    func updateViews() {
        guard
            let wins = searchedPlayer?.lifeTimeStats[8].value,
            let matches = searchedPlayer?.lifeTimeStats[7].value,
            let kills = searchedPlayer?.lifeTimeStats[10].value,
            let kdRatio = searchedPlayer?.lifeTimeStats[11].value
            else { return }
        
        self.moreStatsButton.isHidden = false
        self.accountDescriptionLabel.isHidden = false
        self.platformDescriptionLabel.isHidden = false
        self.winsDescriptionLabel.isHidden = false
        self.mpDescriptionLabel.isHidden = false
        self.tkDescriptionLabel.isHidden = false
        self.kdDescriptionLabel.isHidden = false
        self.userNameLabel.text = searchedPlayer?.epicUserHandle
        self.totalWinsLabel.text = (wins)
        self.matchesPlayedLabel.text = matches
        self.totalKillsLabel.text = kills
        self.kdRatioLabel.text = kdRatio
        switch platform {
        case .kbm:
            self.platformLabel.text = "PC"
        case .gamepad:
            self.platformLabel.text = "Gross Controller"
        case .touch:
            self.platformLabel.text = "Mobile"
        }
    }

    @objc func searchButtonTapped() {
        searchTextField.resignFirstResponder()
        platformSelected(self)
        guard let searched = searchTextField.text, !searched.isEmpty else { return }
        statsController.getStats(platform: platform, accountID: searched) { (_, searchedStats) in
            self.searchedPlayer = searchedStats
        }
        
        DispatchQueue.main.async {
            self.updateViews()
        }
    }
    
    // MARK: IB Actions
    
    @IBAction func platformSelected(_ sender: Any) {
        switch platformControl.selectedSegmentIndex {
        case 0:
            platform = .kbm
            searchTextField.attributedPlaceholder = NSAttributedString(string: "Enter Epic Account ID:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        case 1:
            platform = .gamepad
            searchTextField.attributedPlaceholder = NSAttributedString(string: "Enter Playstation ID:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        case 2:
            platform = .gamepad
            searchTextField.attributedPlaceholder = NSAttributedString(string: "Enter Xbox Gamertag:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        default:
            platform = .kbm
            searchTextField.attributedPlaceholder = NSAttributedString(string: "Enter Epic Account ID:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        }
    }
    
    
    
    // MARK: Text Field Delegate Methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.resignFirstResponder()
        platformSelected(self)
        guard let searched = searchTextField.text, !searched.isEmpty else { return false }
        statsController.getStats(platform: platform, accountID: searched) { (_, searchedStats) in
            self.searchedPlayer = searchedStats
        }
        
        DispatchQueue.main.async {
            self.updateViews()
        }
        return true
    }
    
    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "StatsDetailSegue" {
            guard let statsDetailVC = segue.destination as? StatsDetailViewController else { return }
            statsDetailVC.statsController = statsController
        }
    }
}

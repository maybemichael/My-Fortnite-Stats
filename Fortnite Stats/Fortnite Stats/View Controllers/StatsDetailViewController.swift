
//  StatsDetailViewController.swift
//  Fortnite Stats
//
//  Created by Michael on 4/4/20.
//  Copyright © 2020 Michael. All rights reserved.
//

import UIKit
import Charts

class StatsDetailViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    var pieChartStats = [PieChartDataEntry]()
    
    var statsController: StatsController? {
        didSet {
//            updateViews()
        }
    }
    
    @IBOutlet weak var epicUsernameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var chartView: PieChartView!
    @IBOutlet weak var pieChartView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        updateViews()
    }
    
    func updateViews() {
        guard
            let player = statsController?.playerStats,
            let lifeTime = player.lifeTimeStats,
            let wins = player.lifeTimeStats?[8].value,
            let kills = player.lifeTimeStats?[10].value,
            let matches = player.lifeTimeStats?[7].value,
            let winRatio = player.lifeTimeStats?[9].value,
            let top5 = player.lifeTimeStats?[0].value,
            let top3 = player.lifeTimeStats?[1].value,
            let top6 = player.lifeTimeStats?[2].value,
            let top10 = player.lifeTimeStats?[3].value,
            let top12 = player.lifeTimeStats?[4].value,
            let top25 = player.lifeTimeStats?[5].value,
            let top5Num = Double(top5),
            let top3Num = Double(top3),
            let top6Num = Double(top6),
            let top10Num = Double(top10),
            let top12Num = Double(top12),
            let top25Num = Double(top25),
            let totalWins = Double(wins),
            let totalKills = Double(kills),
            let totalMatches = Double(matches)
            else { return }
        let above25Placement = top3Num + top5Num + top6Num + top10Num + top12Num + top25Num
        let sub25Placement = totalMatches - above25Placement
        
        let top3Entry = PieChartDataEntry(value: top3Num, label: "Top 3")
        let top5Entry = PieChartDataEntry(value: top5Num, label: "Top 5")
        let top6Entry = PieChartDataEntry(value: top6Num, label: "Top 6")
        let top10Entry = PieChartDataEntry(value: top10Num, label: "Top 10")
        let top12Entry = PieChartDataEntry(value: top12Num, label: "Top 12")
        let top25Entry = PieChartDataEntry(value: top25Num, label: "Top 25")
        let sub25Entry = PieChartDataEntry(value: sub25Placement, label: "Sub 25")
        pieChartView.drawHoleEnabled = true
        pieChartView.entryLabelColor = UIColor.black
        pieChartView.drawEntryLabelsEnabled = true
        for stat in lifeTime {
            print(stat)
        }
        epicUsernameLabel.text = player.userName
//        pieChartView.entryLabelFont = UIFont(name: "Montserrat-SemiBold", size: 15)
//        pieChartView.centerText = "Placement"
        pieChartView.centerAttributedText = NSAttributedString(string: "Placement", attributes: [NSAttributedString.Key.font : UIFont(name: "BurbankBigCondensed-Black", size: 21)!, NSAttributedString.Key.foregroundColor : #colorLiteral(red: 1, green: 0.9471729398, blue: 0.3208206296, alpha: 1)])
        pieChartView.holeRadiusPercent = 0.55
        pieChartView.entryLabelColor = UIColor.black
        pieChartView.holeColor = #colorLiteral(red: 0.003241673345, green: 0.5099189878, blue: 0.5638877749, alpha: 1)
        pieChartView.entryLabelFont = UIFont(name: "Montserrat-SemiBold", size: 11)
        pieChartView.chartDescription?.font = UIFont(name: "Montserrat-SemiBold", size: 15)!
//        let losses = totalMatches - totalWins
//        let winEntry = PieChartDataEntry(value: totalWins, label: "Wins")
//        let lossEntry = PieChartDataEntry(value: losses, label: "Losses")
        pieChartStats = [top3Entry, top5Entry, top6Entry, top10Entry, top12Entry, top25Entry]
        let chartDataSet = PieChartDataSet(entries: pieChartStats, label: "")
        let colors = [UIColor.systemGreen, UIColor.blue, UIColor.orange, UIColor.systemTeal, UIColor.systemIndigo, UIColor.purple]
        chartDataSet.colors = colors
        chartDataSet.entryLabelColor = UIColor.black
        chartDataSet.entryLabelFont = UIFont(name: "Montserrat-SemiBold", size: 11)!
        let chartData = PieChartData(dataSet: chartDataSet)
        pieChartView.data = chartData
        
        
        let winPercentage = winRatio.components(separatedBy: CharacterSet.decimalDigits.inverted).joined(separator: "")
        print(winPercentage)
        guard let winRate = Double(winPercentage) else { return }
        
        let decimal = winRate / 100
        print(decimal)
        let gamesWon = totalMatches * decimal
        print("Games won: \(gamesWon.rounded())")
        let chartDescription = NSAttributedString(string: "Lifetime Placement", attributes: [NSAttributedString.Key.font : UIFont(name: "Montserrat-SemiBold", size: 15), NSAttributedString.Key.foregroundColor : UIColor.black])
        

//        let killsEntry = PieChartDataEntry(value: totalKills, label: "Total Kills")
//        let winsEntry = BarChartDataEntry(x: totalMatches, y: totalWins)
//        let winRatioEntry = BarChartDataEntry(x: decimal, yValues: [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0])
//        pieChartStats = [winsEntry, killsEntry, matchesEntry]
//        barChartStats = [winRatioEntry]
        
        
    }
    
    func updateChartData() {
        
    }
}

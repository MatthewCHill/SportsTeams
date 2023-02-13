//
//  SportTeamTableViewCell.swift
//  SportsTeams.mchill
//
//  Created by Matthew Hill on 2/10/23.
//

import UIKit

class SportTeamTableViewCell: UITableViewCell {

    @IBOutlet weak var teamRankLabel: UILabel!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var playerCountLabel: UILabel!
    
    func updateView(team: Team) {
        teamNameLabel.text = team.teamName
        teamRankLabel.text = "#\(team.teamRank)"
        playerCountLabel.text = "Player Count: \(team.playercount)"
    }    
}

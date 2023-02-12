//
//  TeamDetailViewController.swift
//  SportsTeams.mchill
//
//  Created by Matthew Hill on 2/10/23.
//

import UIKit

class TeamDetailViewController: UIViewController {
    // MARK: - Outlets

    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var teamRankTextField: UITextField!
    @IBOutlet weak var playerCountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    
    var team: Team?
   // MARK: - Actions
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        clearView()
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        
        if let team = team {
            TeamController.sharedInstance.deleteTeam(teamToDelete: team)
        } else {
            return
        }
        navigationController?.popViewController(animated: true)

    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let teamName = teamNameTextField.text,
              let teamRank = teamRankTextField.text,
              let playerCount = playerCountTextField.text else {return}
        
        if let team = team {
            TeamController.sharedInstance.updateTeam(teamToupdate: team, name: teamName, rank: Int(teamRank) ?? 0, players: Int(playerCount) ?? 0)
        } else {
            TeamController.sharedInstance.createTeam(name: teamName, rank: Int(teamRank) ?? 0, players: Int(playerCount) ?? 0)
        }
        navigationController?.popViewController(animated: true)
    }
    
    
    // MARK: - Helper Functions
    
    func updateView() {
        guard let team = team else {return}
        teamNameTextField.text = team.teamName
        teamNameTextField.text = "\(team.teamRank)"
        playerCountTextField.text = "\(team.playercount)"
    }
    func clearView() {
        teamNameTextField.text = ""
        teamRankTextField.text = ""
        playerCountTextField.text = ""
    }


}

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
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
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

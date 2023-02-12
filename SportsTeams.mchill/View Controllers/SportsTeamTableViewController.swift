//
//  SportsTeamTableViewController.swift
//  SportsTeams.mchill
//
//  Created by Matthew Hill on 2/10/23.
//

import UIKit

class SportsTeamTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TeamController.sharedInstance.teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as? SportTeamTableViewCell else {return UITableViewCell()}

        cell.updateView(team: TeamController.sharedInstance.teams[indexPath.row])
        

        return cell
    }
    

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let teamToDelete = TeamController.sharedInstance.teams[indexPath.row]
            TeamController.sharedInstance.deleteTeam(teamToDelete: teamToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "teamCell" {
            if let indexPath = tableView.indexPathForSelectedRow {
                if let destinationVC = segue.destination as? TeamDetailViewController {
                    let teamToSend = TeamController.sharedInstance.teams[indexPath.row]
                    destinationVC.team = teamToSend
                }
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

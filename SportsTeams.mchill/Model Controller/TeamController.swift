//
//  TeamController.swift
//  SportsTeams.mchill
//
//  Created by Matthew Hill on 2/11/23.
//

import Foundation

class TeamController {
    // Singleton
    static let sharedInstance = TeamController()
    //My SingleSourceOfTruth
    var teams: [Team] = []
    
    // MARK: - CRUD Functions
    // My Create team func
    func createTeam(name: String, rank: Int, players: Int) {
        let newTeam = Team(teamName: name, teamRank: rank, playercount: players)
        teams.append(newTeam)
    }
    // Updating the team if they lose a player or they drop/gain rank. Or they need to change their name because they were the rebels/indians/chiefs
    func updateTeam(teamToupdate: Team, name: String, rank: Int, players: Int) {
        teamToupdate.teamName = name
        teamToupdate.teamRank = rank
        teamToupdate.playercount = players
    }
    //I need to do some work on my Team to be able to make the delete function
    func deleteTeam(teamToDelete: Team) {
        guard let index = teams.firstIndex(of: teamToDelete) else {return}
        teams.remove(at: index)
    }
    
    
    
}

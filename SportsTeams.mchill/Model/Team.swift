//
//  Team.swift
//  SportsTeams.mchill
//
//  Created by Matthew Hill on 2/10/23.
//

import Foundation

class Team {
    var teamName: String
    var teamRank: Int
    var playercount: Int
    
    init(teamName: String, teamRank: Int, playercount: Int) {
        self.teamName = teamName
        self.teamRank = teamRank
        self.playercount = playercount
    }
} // end of class
extension Team: Equatable {
    static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.teamRank == rhs.teamRank &&
               lhs.teamName == rhs.teamName &&
              lhs.playercount == rhs.playercount
    }
    
    
}

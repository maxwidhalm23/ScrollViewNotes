//
//  BracketObject.swift
//  newBracketApp
//
//  Created by JAMES DURCAN on 2/27/23.
//

import Foundation
//import FirebaseCore
//import FirebaseDatabase
import UIKit
import SwiftUI


public class BracketObject: Codable{
    
 
   var title: String = ""
  var rounds: [RoundClass]
//    var roundsData = [Data]()
    init(title: String, rounds: [RoundClass]) {
        self.title = title
        self.rounds = rounds
    }
    
//homeTeam: String
//var awayTeam: String
//var homeScore: Int
//var awayScore: Int
//var isMatch: Bool
//var winner: Bool
//var winnerCheck: Bool
//var hasTeams: Bool
    
//    rounds[i].matches[j].awayTeam
    
    func saveToFirebase(){
        var dictMatch: [String : Any] = [:]
        var dictRound: [String : Any] = [:]
        for i in 0..<rounds.count{
            for j in 0..<rounds[i].matches.count{
                dictMatch = ["homeTeam": rounds[i].matches[j].homeTeam, "awayTeam": rounds[i].matches[j].awayTeam,"isMatch": rounds[i].matches[j].isMatch,"winner": rounds[i].matches[j].winner, "winnerCheck": rounds[i].matches[j].winnerCheck, "hasTeams": rounds[i].matches[j].hasTeams] as [String : Any]
            }
            dictRound = ["matchDict": dictMatch, "round": rounds[i].round] as [String : Any]
        }
        //var ref = Database.database().reference()
        let dictB = ["title": title, "roundDict": dictRound] as [String: Any]
        //let uRef = ref.childByAutoId()
        //uRef.setValue(dictB)
    }

}

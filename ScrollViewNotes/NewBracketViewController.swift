//
//  NewBracketViewController.swift
//  ScrollViewNotes
//
//  Created by MAX WIDHALM on 2/21/23.
//

import UIKit

class NewBracketViewController: UIViewController {
    
    var theBracket : BracketObject?
    var currentRound : Int!
    
    // LEFT SIDE OUTLETS
    @IBOutlet weak var r1t1: UITextField!
    @IBOutlet weak var r1t2: UITextField!
    @IBOutlet weak var r1t3: UITextField!
    @IBOutlet weak var r1t4: UITextField!
    @IBOutlet weak var r1t5: UITextField!
    @IBOutlet weak var r1t6: UITextField!
    @IBOutlet weak var r1t7: UITextField!
    @IBOutlet weak var r1t8: UITextField!
    @IBOutlet weak var r1t9: UITextField!
    @IBOutlet weak var r1t10: UITextField!
    @IBOutlet weak var r1t11: UITextField!
    @IBOutlet weak var r1t12: UITextField!
    @IBOutlet weak var r1t13: UITextField!
    @IBOutlet weak var r1t14: UITextField!
    @IBOutlet weak var r1t15: UITextField!
    @IBOutlet weak var r1t16: UITextField!
    
    @IBOutlet weak var r2t1: UITextField!
    @IBOutlet weak var r2t2: UITextField!
    @IBOutlet weak var r2t3: UITextField!
    @IBOutlet weak var r2t4: UITextField!
    @IBOutlet weak var r2t5: UITextField!
    @IBOutlet weak var r2t6: UITextField!
    @IBOutlet weak var r2t7: UITextField!
    @IBOutlet weak var r2t8: UITextField!
    
    @IBOutlet weak var r3t1: UITextField!
    @IBOutlet weak var r3t2: UITextField!
    @IBOutlet weak var r3t3: UITextField!
    @IBOutlet weak var r3t4: UITextField!
    
    @IBOutlet weak var r4t1: UITextField!
    @IBOutlet weak var r4t2: UITextField!
    
    @IBOutlet weak var f1: UITextField!
    
    // RIGHT SIDE OUTLETS
    @IBOutlet weak var f2: UITextField!
    
    @IBOutlet weak var r4t3: UITextField!
    @IBOutlet weak var r4t4: UITextField!
    
    @IBOutlet weak var r3t5: UITextField!
    @IBOutlet weak var r3t6: UITextField!
    @IBOutlet weak var r3t7: UITextField!
    @IBOutlet weak var r3t8: UITextField!
    
    @IBOutlet weak var r2t9: UITextField!
    @IBOutlet weak var r2t10: UITextField!
    @IBOutlet weak var r2t11: UITextField!
    @IBOutlet weak var r2t12: UITextField!
    @IBOutlet weak var r2t13: UITextField!
    @IBOutlet weak var r2t14: UITextField!
    @IBOutlet weak var r2t15: UITextField!
    @IBOutlet weak var r2t16: UITextField!
    
    @IBOutlet weak var r1t17: UITextField!
    @IBOutlet weak var r1t18: UITextField!
    @IBOutlet weak var r1t19: UITextField!
    @IBOutlet weak var r1t20: UITextField!
    @IBOutlet weak var r1t21: UITextField!
    @IBOutlet weak var r1t22: UITextField!
    @IBOutlet weak var r1t23: UITextField!
    @IBOutlet weak var r1t24: UITextField!
    @IBOutlet weak var r1t25: UITextField!
    @IBOutlet weak var r1t26: UITextField!
    @IBOutlet weak var r1t27: UITextField!
    @IBOutlet weak var r1t28: UITextField!
    @IBOutlet weak var r1t29: UITextField!
    @IBOutlet weak var r1t30: UITextField!
    @IBOutlet weak var r1t31: UITextField!
    @IBOutlet weak var r1t32: UITextField!
    
    
    @IBOutlet var round1Cells: [UITextField]!
    
    @IBOutlet var round2Cells: [UITextField]!
    
    @IBOutlet var round3Cells: [UITextField]!
    
    @IBOutlet var round4Cells: [UITextField]!
    
    @IBOutlet var finalsCells: [UITextField]!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        populateRound1()
        populateRound2()
//        populateRound3()
//        populateRound4()
//        populateFinals()
        
    }
    
    // theBracket.roundMatches[0].matches[0].homeTeam
    func populateRound1() {
        var i = 0 // cells index
        var n = 0 // match index
        while i < round1Cells.count {
            round1Cells[i].text = "\(theBracket!.rounds[0]!.matches[n].homeTeam)"
            i+=1
            round1Cells[i].text = "\(theBracket!.rounds[0]!.matches[n].awayTeam)"
            i+=1
            n+=1
        }
        print("yuh")
    }
    
    func populateRound2() {
        for i in 0..<round2Cells.count {
            print("\(i) maxxxxxxx")
            print("\(theBracket!.rounds[0]?.matches.count)")
            //print("\(theBracket!.rounds[1]?.matches[i].homeTeam ?? "Round 1 Winner")")

            if theBracket!.rounds[0]!.matches[i].winnerCheck {
                if theBracket!.rounds[0]!.matches[i].winner {
                    round2Cells[i].text = "\(theBracket!.rounds[0]?.matches[i].homeTeam ?? "Round 1 Winner")"
                } else {
                    round2Cells[i].text = "\(theBracket!.rounds[0]?.matches[i].awayTeam ?? "Round 1 Winner")"
                }
            } else {
                round2Cells[i].text = "Round 1 Winner"
            }
            
        }
    }
    
    func populateRound3() {
        for i in 0..<round3Cells.count {
            print("\(i) maxxxxxxx")
            print("\(theBracket!.rounds[1]?.matches.count)")
            //print("\(theBracket!.rounds[1]?.matches[i].homeTeam ?? "Round 1 Winner")")

            if theBracket!.rounds[1]!.matches[i].winnerCheck {
                if theBracket!.rounds[1]!.matches[i].winner {
                    round3Cells[i].text = "\(theBracket!.rounds[1]?.matches[i].homeTeam ?? "Round 2 Winner")"
                } else {
                    round3Cells[i].text = "\(theBracket!.rounds[1]?.matches[i].awayTeam ?? "Round 2 Winner")"
                }
            } else {
                round3Cells[i].text = "Round 2 Winner"
            }
            
        }
    }
    
    func populateRound4() {
        for i in 0..<round4Cells.count {
            print("\(i) maxxxxxxx")
            print("\(theBracket!.rounds[2]?.matches.count)")
            //print("\(theBracket!.rounds[1]?.matches[i].homeTeam ?? "Round 1 Winner")")

            if theBracket!.rounds[2]!.matches[i].winnerCheck {
                if theBracket!.rounds[2]!.matches[i].winner {
                    round4Cells[i].text = "\(theBracket!.rounds[2]?.matches[i].homeTeam ?? "Round 3 Winner")"
                } else {
                    round4Cells[i].text = "\(theBracket!.rounds[2]?.matches[i].awayTeam ?? "Round 3 Winner")"
                }
            } else {
                round4Cells[i].text = "Round 3 Winner"
            }
            
        }
    }
    
    func populateFinals() {
        for i in 0..<finalsCells.count {
            print("\(i) maxxxxxxx")
            print("\(theBracket!.rounds[3]?.matches.count)")
            //print("\(theBracket!.rounds[1]?.matches[i].homeTeam ?? "Round 1 Winner")")

            if theBracket!.rounds[3]!.matches[i].winnerCheck {
                if theBracket!.rounds[3]!.matches[i].winner {
                    finalsCells[i].text = "\(theBracket!.rounds[3]?.matches[i].homeTeam ?? "Finalist")"
                } else {
                    finalsCells[i].text = "\(theBracket!.rounds[3]?.matches[i].awayTeam ?? "Finalist")"
                }
            } else {
                finalsCells[i].text = "Finalist"
            }
            
        }
    }
    

}

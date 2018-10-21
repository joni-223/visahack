//
//  Goals.swift
//  MicroMoney
//
//  Created by Andrey Danilkovich on 10/20/18.
//  Copyright © 2018 Andrey Danilkovich. All rights reserved.
//

import Foundation

import UIKit

class Goal
{
    var goalTitle = ""
    var goalCurrent = 0.0
    var goalTarget = 0.0
    var goalProgress = 0.0
    
    init(goalTitle: String, goalCurrent: Double, goalTarget: Double, goalProgress: Double)
    {
        self.goalTitle = goalTitle
        self.goalCurrent = goalCurrent
        self.goalTarget = goalTarget
        self.goalProgress = goalProgress
    }
}

class Goals {
    var title = ""
    var goalCurrent = 0.0
    var goalTarget = 0.0
    var goalProgress = 0.0
    var goals = [Goal]()
    
    init(title: String, goalCurrent: Double, goalTarget: Double, goalProgress: Double, goals: [Goal])
    {
        self.title = title
        self.goalCurrent = goalCurrent
        self.goalTarget = goalTarget
        self.goalProgress = goalProgress
        self.goals = goals
    }
    
    static func ShortTerm() -> Goals
    {

        let goal1 = Goal(goalTitle: "House", goalCurrent: 100.00, goalTarget: 200.00, goalProgress: 0.5)
        
        let goal2 = Goal(goalTitle: "Car", goalCurrent: 100.00, goalTarget: 200.00, goalProgress: 0.5)
        let goals = [goal1]
        
        let shortTerm = Goals(title: "Key", goalCurrent: 100.00, goalTarget: 200.00, goalProgress: 0.5,goals: goals)
        
        return shortTerm
    }
    
    static func LongTerm() -> Goals
    {
        let goal1 = Goal(goalTitle: "House", goalCurrent: 100.00, goalTarget: 200.00, goalProgress: 0.5)
        let goals = [goal1]
        
        let longTerm = Goals(title: "Car", goalCurrent: 100.00, goalTarget: 200.00, goalProgress: 0.5,goals: goals)
        
        return longTerm
    }
}


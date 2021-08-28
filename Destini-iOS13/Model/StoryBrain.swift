//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain
{
    var storyNumber = 0
    
    let stories = [
    
        Story(title: "You see 2 Road which gets divided ", choice1: "Go Left", choice1Destination: 1, choice2: "Go Right", choice2Destination: 2)
        ,
        Story(title: "You see a deer", choice1: "Hunt the deer", choice1Destination: 3, choice2: "Give some food", choice2Destination: 4)
        ,
        Story(title: "You a treasure box", choice1: "Open it", choice1Destination: 5, choice2: "checks for traps", choice2Destination: 6),
        
        Story(title: "Enjoy the food", choice1: "continue your journey", choice1Destination: 0, choice2: "New Journey", choice2Destination: 2)
        ,
        Story(title: "Its Night", choice1: "Camp for the day", choice1Destination: 0, choice2: "Go walking in the jungle", choice2Destination: 2),
        
        Story(title: "You are a Millionare", choice1: "Buy a car", choice1Destination: 0, choice2: "Give money to charity", choice2Destination: 0),
        Story(title: "You fell into a cage", choice1: "Cry for help", choice1Destination: 0, choice2: "You are dead", choice2Destination: 0)

    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String)
    {
    
        if  userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        }
        else if
            userChoice == stories[storyNumber].choice2 {
                storyNumber = stories[storyNumber].choice2Destination
            }
        }



}

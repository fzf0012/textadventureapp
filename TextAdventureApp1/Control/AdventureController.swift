import SwiftUI

enum Level {
    case level1
    case level2
    case level3
}

class AdventureController: ObservableObject {
    @Published var currentChoice: Choice?
    @Published var currentMessage: String = ""
    @Published var currentLevel: Level = .level1
    let choiceA: Choice
    let choiceB: Choice
    
    init() {
        let choiceAA = Choice(id: "AA", description: "The plane climbs and loses control and crashes.")
        let choiceAB = Choice(id: "AB", description: "The plane dives and loses control and crashes.")
        self.choiceA = Choice(id: "A", description: "Pull up")
        self.choiceB = Choice(id: "B", description: "Dive down")
        
        let initialChoice = Choice(id: "", description: "You are flying a plane through thick clouds and suddenly see another plane in front of you. What do you do?", nextChoices: [choiceA, choiceB])
        
        self.currentChoice = initialChoice
        self.currentMessage = initialChoice.description
    }
    
    func updateCurrentChoice(with choice: Choice) {
        currentChoice = choice
        
        switch currentLevel {
        case .level1:
            if choice.id == "A" {
                currentLevel = .level2
                currentMessage = "You manage to pull the plane up and dodge the other plane. But you see another plane!"
            } else if choice.id == "B" {
                currentLevel = .level2
                currentMessage = "You dive and dodge the other plane. But the plane is out of control and diving to the ground!"
            }
        case .level2:
            if choice.id == "A" {
                currentLevel = .level3
                currentMessage = "The plane climbs, but you lose control and crash."
            } else if choice.id == "B" {
                currentLevel = .level3
                currentMessage = "The plane dives, and you lose control and crash."
            }
        case .level3:
            restartAdventure()
        }
    }
    
    func restartAdventure() {
        currentChoice = nil
        currentMessage = ""
        currentLevel = .level1
        
        let initialChoice = Choice(id: "", description: "You are flying a plane through thick clouds and suddenly see another plane in front of you. What do you do?", nextChoices: [choiceA, choiceB])
        currentMessage = initialChoice.description
    }
}

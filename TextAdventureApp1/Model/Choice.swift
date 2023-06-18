import SwiftUI

struct Choice: Identifiable {
    let id: String
    let description: String
    let nextChoices: [Choice]
    
    init(id: String, description: String, nextChoices: [Choice] = []) {
        self.id = id
        self.description = description
        self.nextChoices = nextChoices
    }
}

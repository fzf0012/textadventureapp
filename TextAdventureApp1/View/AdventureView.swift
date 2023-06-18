import SwiftUI

struct AdventureView: View {
    @ObservedObject var controller = AdventureController()
    
    var body: some View {
        VStack {
            Text(controller.currentMessage)
                .padding()
            
            if controller.currentLevel == .level1 {
                ChoicesView(choices: [controller.choiceA, controller.choiceB]) { choice in
                    controller.updateCurrentChoice(with: choice)
                }
                .padding(.vertical, 10)
            } else if controller.currentLevel == .level2 {
                ChoicesView(choices: [controller.choiceA, controller.choiceB]) { choice in
                    controller.updateCurrentChoice(with: choice)
                }
                .padding(.vertical, 10)
            } else {
                Button(action: {
                    controller.restartAdventure()
                }) {
                    Text("Restart")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.bottom, 10)
                }
            }
        }
    }
}


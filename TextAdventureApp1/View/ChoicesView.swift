import SwiftUI

struct ChoicesView: View {
    let choices: [Choice]
    let didSelectChoice: (Choice) -> Void
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(choices) { choice in
                Button(action: {
                    didSelectChoice(choice)
                }) {
                    Text(choice.description)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

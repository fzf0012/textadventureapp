import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            AdventureView()
                .navigationBarTitle("The Nightmare")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .edgesIgnoringSafeArea(.all) // Add this modifier
    }
}

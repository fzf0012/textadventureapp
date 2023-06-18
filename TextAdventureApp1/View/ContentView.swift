import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            AdventureView()
                .navigationBarTitle("MyAdventure")
                .navigationViewStyle(StackNavigationViewStyle()) // Use StackNavigationViewStyle
        }
    }
}

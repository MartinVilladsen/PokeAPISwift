import SwiftUI

@main
struct PokiAPIApp: App {
    @State private var controller = StateController()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(controller)
        }
    }
}

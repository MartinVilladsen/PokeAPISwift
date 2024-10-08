//
//  PokiAPIApp.swift
//  PokiAPI
//
//  Created by Natasja Knak Villadsen on 18/09/2024.
//

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

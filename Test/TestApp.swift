//
//  TestApp.swift
//  Test
//
//  Created by Lonnie Gerol on 1/10/23.
//

import SwiftUI

@main
struct TestApp: App {
    var body: some Scene {
        WindowGroup {
            // Uncomment the TabView and the StateObject will no longer be initalized twice
            TabView {
                ViewOne()
                    .tabItem { Label("test", systemImage: "circle") }
            }
        }
    }
}

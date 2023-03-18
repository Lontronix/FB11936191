//
//  ContentView.swift
//  Test
//
//  Created by Lonnie Gerol on 1/10/23.
//

import SwiftUI

struct ViewOne: View {
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack {
                Text("View One")
                    .onTapGesture {
                        navigationPath.append("Test123")
                    }
            }
            .navigationDestination(for: String.self) { string in
                ViewTwo()
            }
            .navigationTitle("View One")
            .padding()
        }
    }
}

class ViewModel: ObservableObject {
    @Published var foo = "Hello World"
    
    init() {
        print("ViewModel Initialized..")
    }
    
    deinit {
        print("ViewModel deinitialized..")
    }
}

struct ViewTwo: View {
    @StateObject private var foo = ViewModel()
    
    init() {
        _foo = StateObject(wrappedValue: ViewModel())
        print("View Two Initialized")
    }
    
    var body: some View {
       Text("View Two")
            .navigationTitle("View Two")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewOne()
    }
}

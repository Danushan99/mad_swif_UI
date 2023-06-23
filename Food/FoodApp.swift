//
//  FoodApp.swift
//  Food
//
//  Created by Groot on 12/06/23.
//

import SwiftUI

@main
struct FoodApp: App {
    @State private var showMainView = false
    var body: some Scene {
        WindowGroup {
            if showMainView {
                ContentView()
            } else {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                          
                            showMainView = true
                        }
                    }
            }
        }
    }
}



//
//  FruitsPlusApp.swift
//  FruitsPlus
//
//  Created by Abdullah Bilgin on 7/26/23.
//

import SwiftUI

@main
struct FruitsPlusApp: App {
    // MARK: - PROPERTY
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

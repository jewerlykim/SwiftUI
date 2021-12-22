//
//  Section6FruitsApp.swift
//  Section6Fruits
//
//  Created by 김보석 on 2021/12/21.
//

import SwiftUI

@main
struct Section6FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
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

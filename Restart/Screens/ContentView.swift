//
//  ContentView.swift
//  Restart
//
//  Created by Andrea Reinicke on 14.02.23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

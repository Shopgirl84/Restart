//
//  OnboardingView.swift
//  Restart
//
//  Created by Andrea Reinicke on 14.02.23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    @AppStorage ("onboarding") var isOnboardingViewActive: Bool = true
    
    
    // MARK: - BODY
    
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            })
            {
                Text("Start")
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

//
//  HomeView.swift
//  Restart
//
//  Created by Andrea Reinicke on 14.02.23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    @AppStorage ("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    
    
    var body: some View {
        VStack (spacing: 20){
            // MARK: - HEADER
            
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1
                )
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            
            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependend on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            // MARK: - FOOTER
            
            Spacer()
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill").imageScale(.large)
                Text("Restart")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

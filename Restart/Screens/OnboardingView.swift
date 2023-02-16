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
        ZStack {
            
            
            Color ("ColorBlue").ignoresSafeArea(.all, edges: .all)
            
            VStack (spacing: 20) {
                // MARK: - HEADER
                
                Spacer()
                
                VStack(spacing: 0) {
                Text("Share.")
                        .font(.system(size: 60.0))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                Text("""
    It's not how much we give,
    but how much love we put into giving.
""")
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .fontWeight(.light)
                .padding(.horizontal, 10)
                }
                
                // MARK: - CENTER
                
                ZStack {
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    
                        Image("character-1")
                            .resizable()
                            .scaledToFit()
                    
                }
                Spacer()
                
                // MARK: - FOOTER
                
                ZStack{
                    // PARTS OF THE CUSTOM BUTTON
                    
                    // 1. Background (static)
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    // 2. Call-To-Action (static)
                    Text("Get started.")
                        .foregroundColor(.white)
                        .font(.system(.title3, design: .rounded))
                        .offset(x: 20)
                    
                    // 3. Capsule (dynamic width)
                    
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80.0)
                        Spacer()
                    }
                    
                    // 4. Circle (draggable)
                    
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.2))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .fontWeight(.bold)
                                .font(.system(size: 26.0))
                                .foregroundColor(.white)
                                .frame(height: 80.0, alignment: .center)
                                .onTapGesture {
                                    isOnboardingViewActive = false
                                }
                        }
                        Spacer()
                    }
                    
                }
                .frame(height: 80.0, alignment: .center)
                .padding()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

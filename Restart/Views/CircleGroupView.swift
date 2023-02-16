//
//  CircleGroupView.swift
//  Restart
//
//  Created by Andrea Reinicke on 16.02.23.
//

import SwiftUI


struct CircleGroupView: View {
    
    // MARK: - PROPERTY

    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
        
    
    // MARK: BODY
    
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40.0)
                .frame(width: 260.0,height: 260.0, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80.0)
                .frame(width: 260.0,height: 260.0, alignment: .center)
        }
    }
}

// MARK: - PREVIEW

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
            
        }
    }
}

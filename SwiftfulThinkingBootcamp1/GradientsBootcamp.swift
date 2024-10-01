//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 01/10/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                
                //Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue,Color.green,Color.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
//                RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .topLeading, startRadius: 5, endRadius: 400)
                
                AngularGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .topLeading,angle: .degrees(180+45))
                
            )
            .frame(width: 300,height: 200)
        
    }
}

#Preview {
    GradientsBootcamp()
}

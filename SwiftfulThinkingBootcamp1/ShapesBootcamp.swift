//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 01/10/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    
    var body: some View {
       // Circle()
//            .stroke(Color.orange,style: StrokeStyle(lineWidth: 20,lineCap: .butt,dash: [30]))
            //.trim(from:0.0,to:0.5)
            //.stroke(Color.purple,lineWidth: 50)
       // Ellipse()
        Capsule(style: .circular)
            .frame(width: 200,height: 100)
        
        
        
        
            
        
        
        
    }
}

#Preview {
    ShapesBootcamp()
}

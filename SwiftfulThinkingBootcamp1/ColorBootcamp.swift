//
//  ColoursBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 01/10/24.
//

import SwiftUI

struct ColoursBootcamp: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
               // Color(UIColor.systemBackground)
                
                Color("CustomColor")
                
            
            )
            .frame(width: 300,height: 200)
            //.shadow(radius: 10)
        
        
        
        
        
            
        
    }
}

#Preview {
    ColoursBootcamp()
}

//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 03/10/24.
//

import SwiftUI

//spacer can add space between view to push apart
// are adaptive ,horzontally,vertically

struct SpacerBootcamp: View {
    var body: some View {
        
        HStack(spacing: 0){
            
            Spacer(minLength: 10)
                .frame(height:10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50,height: 50)
            
            Spacer()
                .frame(height:10)
                .background(Color.orange)

            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50,height:50)
            
            Spacer()
                .frame(height:10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50,height:50)
            
            Spacer(minLength: 0)
                .frame(height:10)
                .background(Color.orange)
            
            
        }
        .background(Color.yellow)
        .padding(.horizontal,200)
        .background(Color.blue)
        
        
    }
}

#Preview {
    SpacerBootcamp()
}

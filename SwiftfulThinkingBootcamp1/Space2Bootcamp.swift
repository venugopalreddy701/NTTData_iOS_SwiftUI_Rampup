//
//  Space2Bootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 03/10/24.
//

import SwiftUI

struct Space2Bootcamp: View {
    var body: some View {
        VStack{
            HStack(spacing: 0){
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Image(systemName: "gear")
                
                
            }
            
        }
        .font(.title)
        .padding(.horizontal)
        
        Spacer()
            .frame(width: 10)
            .background(Color.orange)
        
        
        
    }
}

#Preview {
    Space2Bootcamp()
}

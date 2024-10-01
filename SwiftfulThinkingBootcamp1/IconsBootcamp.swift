//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 01/10/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            //.font(.largeTitle)
            .resizable()
            //.aspectRatio(contentMode: .fit)
           // .scaledToFit()
            .scaledToFill()
        
           
            .font(.system(size: 200))
            .foregroundColor(Color(UIColor.red))
            .frame(width: 300,height: 300)
            
        
        
        
        
    }
}

#Preview {
    IconsBootcamp()
}

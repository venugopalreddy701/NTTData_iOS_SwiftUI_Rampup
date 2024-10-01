//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 01/10/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("pic1")
            .resizable()
            .renderingMode(.template)
            .frame(width: 300,height: 300)
            
           // .aspectRatio(contentMode: .fit)
            //.clipped()
            //.cornerRadius(150)
            .clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25.0)
                Ellipse()
            )
        
            
        
    }
}

#Preview {
    ImageBootcamp()
}

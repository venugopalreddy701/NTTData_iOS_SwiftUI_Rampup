//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 03/10/24.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            .padding(.top,50)
            .background(Color.blue)
        
        VStack(alignment: .leading){
            Text("Hello Venu!")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("This is blah blah! This is blah blah !This is blah blahThis is blah blah This is blah blah This is blah blahThis is blah blah This is blah blah.")
       
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color : Color.black.opacity(0.3),
                    radius: 10,
                    x:0.0,y:0.0)
                )
        .padding(.horizontal,10)
        
            
        
        
        
        
        
        
    }
}

#Preview {
    PaddingBootcamp()
}

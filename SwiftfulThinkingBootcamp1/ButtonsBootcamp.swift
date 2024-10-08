//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 07/10/24.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title:String = "This is my title"
    
    var body: some View {
        
        VStack {
            Text(title)
            Button("Press me !"){
                self.title = "Button Was Pressed"
            }
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
               
                Circle()
                    .fill(Color.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
                
            })
            
        }
        
    }
    
}

#Preview {
    ButtonsBootcamp()
}

//
//  AnimationtimingBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 14/10/24.
//

import SwiftUI

struct AnimationtimingBootcamp: View {
    
    
    @State var isAnimating : Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            
            //different velocity of linear,easeIn etc
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                //.animation(.spring())
                .animation(.spring(response: 1.0,dampingFraction: 0.7,blendDuration: 1.0))
               // .animation(Animation.linear(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.easeInOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.easeOut(duration: timing))
           
            
        }
        
        
    }
}

#Preview {
    AnimationtimingBootcamp()
}

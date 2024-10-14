//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 11/10/24.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
      
        VStack{
            Button("Button"){
                
                //anything that uses isAnimated variable will be effected
                withAnimation(Animation.default.repeatForever(autoreverses: true)){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ?  Color.red : Color.green)
                .frame(width: isAnimated ?   100:300,height:isAnimated ?   100:300)
            // lets add animation
                .rotationEffect(Angle(degrees: isAnimated ? 300 : 0))
            
                .offset(y: isAnimated ? 300:0 )
            //way 2- this animation , when rect changes
//                .animation(Animation.default.repeatForever(autoreverses: true))
//           
            
            Spacer()
        }
        
        
    }
}

#Preview {
    AnimationBootcamp()
}

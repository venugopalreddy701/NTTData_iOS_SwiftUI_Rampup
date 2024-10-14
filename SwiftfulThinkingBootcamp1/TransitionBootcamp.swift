//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 14/10/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView : Bool = false
    
    
    var body: some View {
        
        
        
        ZStack(alignment: .bottom){
            
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
                
            }
            //
            if showView {
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    //.transition(.slide)
                   //.transation(AnyTransaction.scale.animation(.easeInOut))
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
                
//                    .opacity(showView ? 1.0 : 0.0)
                    .animation(.easeInOut)
                
            }
           
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

#Preview {
    TransitionBootcamp()
}

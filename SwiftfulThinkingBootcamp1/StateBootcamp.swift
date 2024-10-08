//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 08/10/24.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var background: Color = Color.green
    @State var myTitle:String = "My Title"
    @State var count:Int = 0
    
    
    var body: some View {
        
        ZStack{
            //background
            background
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                
                Text(myTitle)
                    .font(.headline)
                    .underline()
                
                Text("Count: \(count)")
                
                HStack(spacing: 20){
                    
                    Button("BUTTON 1"){
                        background = .red
                        myTitle = "Button 1 was pressed"
                        count+=1
                    }
                    Button("Button 2"){
                        background = .purple
                        myTitle = "Button 2 was pressed"
                        count-=1
                    }
                }
            }.foregroundColor(.white)
            
            
        }
        
    }
}

#Preview {
    StateBootcamp()
}

//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 08/10/24.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor : Color = Color.pink
    
    var body: some View {
        
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
            
        }
        
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
            
            Button(action:{
                buttonPressed()
             
            },label: {
                          Text("PRESS ME")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.black)
                                    .cornerRadius(10)
            })
            
        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}

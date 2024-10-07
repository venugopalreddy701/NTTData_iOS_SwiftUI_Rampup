//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 07/10/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ZStack {
            ScrollView {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                ForEach(0..<10){index in
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.blue)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                    
                }
                
            }
        }
        .background(
            Color.red
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
        )
       
        
        
        
        
        
//        ZStack {
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            
//            //foreground
//            VStack {
//                Text("hello world")
//                Spacer()
//                
//            } .frame(maxWidth: .infinity,maxHeight: .infinity)
//                //.background(Color.red)
//               
//        }
            
        
    }
}

#Preview {
    SafeAreaBootcamp()
}

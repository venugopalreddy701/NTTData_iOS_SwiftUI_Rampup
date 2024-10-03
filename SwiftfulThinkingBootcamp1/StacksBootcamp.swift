//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 03/10/24.
//

import SwiftUI

struct StacksBootcamp: View {
    
    
    var body: some View {
        
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350,height: 500,alignment: .center)
            
            VStack{
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150,height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150,height: 150)
                HStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100,height: 100)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 100,height: 100)
                }
                .background(Color.black)
                
                
            }
            .background(Color.pink)
            
        }
        .background(Color.purple)
        
        VStack(alignment: .center){
            Text("Hello")
            Text("5")
        }
        
        
//        HStack(alignment: .bottom,spacing: nil, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200,height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150,height: 150)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100,height: 100)
//            
//        })
//        
//        VStack{
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150,height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 130,height: 100)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100,height: 100)
//            
//        }
        
    }
    
}

#Preview {
    StacksBootcamp()
}

//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 03/10/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi","Hello","Hey everyone"]
    let myString:String = "Hello"
    
    var body: some View {
       
//        VStack{
//            
//            ForEach(0..<10){ index in
//                HStack{
//                    Circle()
//                        .frame(width:30,height: 30)
//                    Text("Index is: \(index)")
//                    
//                }
//                
//                
//            }
//            
//        }
        
        VStack {
            ForEach(data.indices){index in
                
                Text("\(data[index]): \(index)")
                
                
            }
        }
        
        
    }
}

#Preview {
    ForEachBootcamp()
}

//
//  ScrollViewBootCamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 03/10/24.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        
//        ScrollView(.vertical,showsIndicators: true,content: {
//            HStack {
//                
//                ForEach(0..<10){index in
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width:300,height: 300)
//                    
//                }
//            }
//                
//                
//            })
        
        ScrollView {
            LazyVStack{
                
                ForEach(0..<10){ index in
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        LazyHStack {
                            
                            ForEach(0..<20){ index in
                                
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                
                                
                            }
                            
                          
                            
                            
                        }
                    }
                    
                  
                    
                    
                    
                }
            }
            
        }
        
        
        }
        
        
//        ScrollView{
//            VStack {
//                
//                ForEach(0..<10){index in
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                    
//                }
//               
//              
//            }
//        }
        
        
  //  }
            
}

#Preview {
    ScrollViewBootCamp()
}

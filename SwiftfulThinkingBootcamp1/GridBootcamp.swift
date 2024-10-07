//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 07/10/24.
//

import SwiftUI

struct GridBootcamp: View {
    
//    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing:nil     , alignment:  nil),
//        GridItem(.fixed(50), spacing:nil     , alignment:  nil),
//        GridItem(.fixed(50), spacing:nil     , alignment:  nil),
//        GridItem(.fixed(100), spacing:nil     , alignment:  nil),
//        GridItem(.fixed(75), spacing:nil     , alignment:  nil),
//        GridItem(.fixed(50), spacing:nil     , alignment:  nil)
//    ]
    
    let columns: [GridItem] = [GridItem(.flexible(), spacing: nil, alignment: nil),
                               GridItem(.flexible(), spacing: nil, alignment: nil),
                               GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
//    let columns : [GridItem] = [
//        GridItem(.adaptive(minimum: 50, maximum: 300),spacing:nil,alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300  ),spacing: nil,alignment: nil)
//    ]
    
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, alignment: .center,
                      spacing: 6,
                      pinnedViews: [],
                      content: {
                Section(header: Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color.blue)
                        
                ){
                    ForEach(0..<20){
                        index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header: Text("Section 2")
                    .foregroundColor(.blue)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(Color.red)
                        
                ){
                    ForEach(0..<20){
                        index in
                        
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                        
                    }
                }
                
                
            }
                      
                      
                      
                      
            )
            
            //        LazyVGrid(columns: columns){
            //
            //            ForEach(0..<50){ index in
            //                Rectangle().frame(height: 150)
            //
            //            }
            //
            //        }
            
            
            
            
            
        }
    }
}

#Preview {
    GridBootcamp()
}

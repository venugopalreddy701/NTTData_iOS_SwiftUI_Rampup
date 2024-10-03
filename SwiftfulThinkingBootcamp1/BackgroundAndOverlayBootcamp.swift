//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 02/10/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    
    //background and overlay of a view
    
    var body: some View {
//        Text("Hello, World!")
//           
//            .background(
////                LinearGradient(gradient: Gradient(colors: [Color.red]), startPoint: .leading, endPoint: .trailing)
//                
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100,height: 100,alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 120,height: 120,alignment: .center)
//                
//            )
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100,height: 100,alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//                
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110,height: 110)
//            )
//        
//        
//        Rectangle()
//            .fill(Color.yellow)
//            .frame(width: 100,height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50,height: 50)
//                ,alignment: .center
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150,height: 150)
//                ,alignment: .center
//            )
//
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient:Gradient(colors: [Color.red,Color.purple]),startPoint: .leading,endPoint: .trailing)
                        
                    )
                    .frame(width: 100,height: 100)
                    .shadow(color: .black, radius: 10,x:0.0,y:10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35,height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                        .shadow(color: .black, radius: 10,x:0.0,y:10)
                        ,alignment: .bottomTrailing)
                    )
            
    }
    
    
}

#Preview {
    BackgroundAndOverlayBootcamp()
}

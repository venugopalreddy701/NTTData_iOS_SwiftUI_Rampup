//
//  ExtractSubViewBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 08/10/24.
//

import SwiftUI

struct ExtractSubViewBootcamp: View {
    
    var body: some View {
       
        ZStack{
            Color(Color.blue).edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
        
    }
    var contentLayer: some View {
        HStack{
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34 , color: .yellow)
        }
    }
    
  
    
}

#Preview {
    ExtractSubViewBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

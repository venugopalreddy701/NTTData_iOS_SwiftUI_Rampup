//
//  ContentMenuBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 14/10/24.
//

import SwiftUI

struct ContentMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    
    
    var body: some View {
        
        
        VStack(alignment: .leading,spacing: 10.0){
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
            
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.blue).cornerRadius(30)
        .contextMenu(menuItems: {
                    Button(action: {
                        backgroundColor = .yellow
                    }, label: {
                        Label("Share post", systemImage: "flame.fill")
                    })
                    
                    Button(action: {
                        backgroundColor = .red
                    }, label: {
                        Text("Report post")
                    })
                    
                    Button(action: {
                        backgroundColor = .green
                    }, label: {
                        HStack {
                            Text("Like post")
                            Image(systemName: "heart.fill")
                        }
                    })
                })
            }
        }

#Preview {
    ContentMenuBootcamp()
}

//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 11/10/24.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title:String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text(title)
                //pass variable
                ButtonView(backgroundColor: $backgroundColor,title: $title)
            }
            
           
        }
    }
}

struct ButtonView: View {
    
    // we can use different name as well
    @Binding var backgroundColor : Color
    @State var buttonColor : Color = Color.blue
    @Binding var title: String
    
    
    var body: some View {
        Button(action: {
            
           
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "New title!!"
            
            
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
            
        })
    }
    
}

#Preview {
    BindingBootcamp()
}

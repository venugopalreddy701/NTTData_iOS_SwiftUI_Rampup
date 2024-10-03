//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 03/10/24.
//

import SwiftUI

enum Fruit{
    case apple
    case orange
}

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    
    let count: Int
    
    let title: String
    
    init(count: Int,fruit:Fruit) {
        self.count = count
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }
        else{
            
            self.title = "Oranges"
            self.backgroundColor = .orange
            
        }
      
    }
    
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{
        InitializerBootcamp(count: 100, fruit: .apple)
        InitializerBootcamp(count: 88, fruit: .orange)
    }
}

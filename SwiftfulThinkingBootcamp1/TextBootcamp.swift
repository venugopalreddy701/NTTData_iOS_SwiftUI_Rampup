//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 01/10/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        
        Text("Hello, World! This is the swiftful thinking bootcamp. I am really enjoying this course and learning a lot.")
            .font(.body)
            .fontWeight(.medium)
            .bold()
            .italic()
            .underline(true,color: Color.red)
            .font(.system(size: 24,weight: .semibold,design: .monospaced))
            .multilineTextAlignment(.center)
            .baselineOffset(10.0)
            .foregroundColor(.blue)
            .frame(width: 200,height: 100,alignment: .center)
            .minimumScaleFactor(0.1)
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    TextBootcamp()
}

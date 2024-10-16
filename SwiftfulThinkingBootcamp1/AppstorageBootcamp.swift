//
//  AppstorageBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 16/10/24.
//

import SwiftUI

struct AppstorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
            }
        }
    }
}


#Preview {
    AppstorageBootcamp()
}

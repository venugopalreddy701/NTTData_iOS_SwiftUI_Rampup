//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by Venugopal on 14/10/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits : [String] = [ "apple","orange","banana","peach"]
    
    @State var veggies: [String] = [
           "tomato", "potato", "carrot"
       ]
    
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header:Text("Fruits")){
                    
                    ForEach(fruits,id:\.self){ fruit in
                        Text(fruit.capitalized)
                        
                    }
                    .onDelete (perform: { indexSet in
                        delete(indexSet: indexSet)
                    })
                    // .onDelete (perform: delete)
                    .onMove(perform: {indices,newOffset in
                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                        
                    })
                    .listRowBackground(Color.blue)
                                 }
                                 
                                 Section(header: Text("Veggies")) {
                                     ForEach(veggies, id: \.self) { veggies in
                                         Text(veggies.capitalized)
                                     }
                                 }
                             }
                             .accentColor(.purple)
                             //.listStyle(SidebarListStyle())
                             .navigationTitle("Grocery List")
                             .navigationBarItems(leading: EditButton(), trailing: addButton)
                         }
                         .accentColor(.red)
                     }
                     
                     var addButton: some View {
                         Button("Add", action: {
                             add()
                         })
                     }
                     
                     func delete(indexSet: IndexSet) {
                         fruits.remove(atOffsets: indexSet)
                     }
                     
                     func move(indices: IndexSet, newOffset: Int) {
                         fruits.move(fromOffsets: indices, toOffset: newOffset)
                     }
                     
                     func add() {
                         fruits.append("Coconut")
                     }
                 }

                 struct ListBootcamp_Previews: PreviewProvider {
                     static var previews: some View {
                         ListBootcamp()
                     }
                 }

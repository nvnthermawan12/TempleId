//
//  TempleListView.swift
//  TempleId
//
//  Created by Novianto Hermawan on 27/07/21.
//

import SwiftUI

struct TempleListView: View {
    @State private var sheet = false
    
    var body: some View {
        NavigationView{
            List(temples){
                temple in NavigationLink(destination: TempleDetailView(temple: temple)){
                    TempleRow(temple: temple)
                }
            }
            .navigationTitle("TempleId")
            .toolbar{
                ToolbarItem{
                    Button{
                        sheet.toggle()
                    }
                    label: {
                        Image(systemName: "person.crop.circle")
                    }.sheet(isPresented: $sheet){
                        ProfileView()
                    }
                }
                
            }
        }
        
    }
}

struct TempleListView_Previews: PreviewProvider {
    static var previews: some View {
        TempleListView()
    }
}

//
//  TempleListView.swift
//  TempleId
//
//  Created by Novianto Hermawan on 27/07/21.
//

import SwiftUI

struct TempleListView: View {
    var body: some View {
        NavigationView{
            List(temples){
                temple in NavigationLink(destination: TempleDetailView(temple: temple)){
                    TempleRow(temple: temple)
                }
            }
            .navigationTitle("TempleId")
        }
        
    }
}

struct TempleListView_Previews: PreviewProvider {
    static var previews: some View {
        TempleListView()
    }
}

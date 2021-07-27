//
//  TempleListView.swift
//  TempleId
//
//  Created by Novianto Hermawan on 27/07/21.
//

import SwiftUI

struct TempleListView: View {
    var body: some View {
        List(temples, id: \.id){
            temple in TempleRow(temple: temple)
        }
    }
}

struct TempleListView_Previews: PreviewProvider {
    static var previews: some View {
        TempleListView()
    }
}

//
//  TempleRow.swift
//  TempleId
//
//  Created by Novianto Hermawan on 27/07/21.
//

import SwiftUI

struct TempleRow: View {
    var temple: Temple
    
    var body: some View {
        HStack{
            temple.image
                .resizable()
                .frame(width:50,height: 50)
                .cornerRadius(5).padding(.horizontal, 5)
            
            VStack(alignment: .leading, spacing: 7) {
                Text(temple.name).font(.system(size: 15))
                    .fontWeight(.bold)
                
                HStack {
                    Text(temple.city).font(.system(size: 10)).fontWeight(.light)
                    Text(temple.state).font(.system(size: 10)).fontWeight(.light).frame(alignment: .trailing)
                }
            }
            
        }
        
    }
}

struct TempleRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TempleRow(temple: temples[0]).previewLayout(.fixed(width: 300, height: 70))
            TempleRow(temple: temples[2]).previewLayout(.fixed(width: 300, height: 70))
        }
        
    }
}

//
//  TempleDetailView.swift
//  TempleId
//
//  Created by Novianto Hermawan on 28/07/21.
//

import SwiftUI

struct TempleDetailView: View {
    var temple: Temple
    var body: some View {
        ScrollView{
            VStack {
                
                temple.image.resizable().cornerRadius(20, corners: [.topLeft,.topRight]).shadow(radius: 4).padding()
            }
            VStack(alignment:.leading, spacing:10) {
                Text("About \(temple.name)").font(.system(size: 25))
                Divider()
                Text(temple.description).fontWeight(.light)
                
            }
            .padding()
        }
        .navigationTitle(temple.name)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

extension View{
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct TempleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TempleDetailView(temple: temples[0])
    }
}

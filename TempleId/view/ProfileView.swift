//
//  ProfileView.swift
//  TempleId
//
//  Created by Novianto Hermawan on 28/07/21.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        NavigationView{
            VStack {
                Image("vian")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.green, lineWidth: 4)).shadow(radius: 7).padding()
                VStack(spacing: 15) {
                    Text("Novianto Hermawan").font(.system(size: 25))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Link(destination: URL(string: "https://twitter.com/nvnthermawan12")!, label: {
                        Text("Follow Me On Twitter")
                            .bold()
                            .frame(width: 280, height: 50)
                            .foregroundColor(.green)
                            .background(Color.black)
                            .cornerRadius(12)
                    })
                }
                
                Spacer()
                    
                    .navigationTitle("My Profile")
                    .toolbar(content: {
                        ToolbarItem(placement: .navigationBarLeading){
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "chevron.backward")
                            })
                        }
                    })
                    .navigationBarBackButtonHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
            }
            
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

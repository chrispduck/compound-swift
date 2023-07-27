//
//  HomeView.swift
//  SwiftSample (iOS)
//
//  Created by Christopher Parsons on 22/07/2023.
//

import SwiftUI

struct HomeView: View {
    let user: User

    var body: some View {
        VStack{
            
            VStack(alignment: .leading) {
                MapView()
                    .frame(height: 300)
                
                ImageView()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                Text("My house").font(.title)
                
                HStack{
                    Text("34 meow lane")
                    Spacer()
                    Text("California")
                }.font(.subheadline).foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                     .font(.title2)
                 Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(user: example_user)
    }
}

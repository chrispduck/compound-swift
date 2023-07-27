//
//  NavBarView.swift
//  SwiftSample (iOS)
//
//  Created by Christopher Parsons on 22/07/2023.
//

import SwiftUI

struct NavBarView: View {
    let user: User
    var body: some View {
        TabView {
            TodayTaskView()
            .tabItem {
                    Image(systemName: "house.fill")
                    Text("Today")
                }
            
            Text("History")
                .tabItem {
                    Image(systemName: "magazine.fill")
                    Text("History")
                }
            
                ProfileView(user: user).tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView(user: example_user)
    }
}

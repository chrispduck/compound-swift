import SwiftUI
import Auth0

struct MainView: View {
    @State var user: User?

    var body: some View {
        if let user = self.user {
            VStack {
//                HomeView(user: user)
//                ProfileView(user: user)
                Button("Logout", action: self.logout)
                TabView {
                    NavBarView(user:user)
//                    ProfileView(user: user)
//                        .tabItem {
//                           Image(systemName: "person")
//                           Text("Profile")
//                       }
                }
                
            }
        } else {
            VStack {
                HeroView()
                Button("Login", action: self.login)
            }
        }
    }
}

extension MainView {
    func login() {
        Auth0
            .webAuth()
            .start { result in
                switch result {
                case .success(let credentials):
                    self.user = User(from: credentials.idToken)
                case .failure(let error):
                    print("Failed with: \(error)")
                }
            }
    }

    func logout() {
        Auth0
            .webAuth()
            .clearSession { result in
                switch result {
                case .success:
                    self.user = nil
                case .failure(let error):
                    print("Failed with: \(error)")
                }
            }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

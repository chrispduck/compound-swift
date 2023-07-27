import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        VStack (alignment: .center){
            HStack{
                Text(user.name).font(.title)
                Spacer()
                ProfileHeader(picture: user.picture)
            }.padding(30)

            List {
                Section() {
                    ProfileCell(key: "ID", value: user.id)
                    ProfileCell(key: "Name", value: user.name)
                    ProfileCell(key: "Email", value: user.email)
                    ProfileCell(key: "Email verified?", value: user.emailVerified)
                    ProfileCell(key: "Updated at", value: user.updatedAt)
                }
            }
            Button("Logout", action: MainView().logout)
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: example_user )
    }
}

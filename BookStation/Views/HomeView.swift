import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    var body: some View {
        VStack{
            NavigationLink(destination: RootView().navigationBarHidden(true) , isActive: $viewModel.isLoggedOut) { }
            List {
                   NavigationLink("Search Book") { BooksView() }
                   NavigationLink("User info") { UserInfoView() }
                   NavigationLink("Settings") { SettingsView() }
               }
            Image("logo")
                .resizable()
                .frame(width: 65, height: 65)
                .padding(.vertical)
            Button("Logout"){
                Task{
                    do{
                        try await viewModel.logOut()
                    }catch{
                        print(error)
                    }
                }
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeView()
    }
}

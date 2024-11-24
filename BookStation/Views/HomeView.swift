import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    var body: some View {
        VStack{
            NavigationLink(destination: RootView().navigationBarHidden(true) , isActive: $viewModel.isLoggedOut) { }
            Button("Logout"){
                Task{
                    do{
                        try await viewModel.logOut()
                    }catch{
                        print(error)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeView()
    }
}

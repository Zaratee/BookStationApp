//
//  RootView.swift
//  BookStation
//
//  Created by TECNOSYSTEM2000 on 23/11/24.
//

import SwiftUI

@MainActor
final class HomeViewModel: ObservableObject{
    @Published var isLoggedOut = false
    func logOut() async throws{
        Task {
            do{
                try AuthenticationManager.shared.logOut()
                isLoggedOut = true
            }
        }
    }
}
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

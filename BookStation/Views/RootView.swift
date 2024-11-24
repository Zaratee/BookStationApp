//
//  RootView.swift
//  BookStation
//
//  Created by TECNOSYSTEM2000 on 23/11/24.
//

import SwiftUI

prefix func ! (value: Binding<Bool>) -> Binding<Bool> {
    Binding<Bool>(
        get: { !value.wrappedValue },
        set: { value.wrappedValue = !$0 }
    )
}

struct RootView: View {
    @State private var showSignInView: Bool = false
    var body: some View {
        ZStack{
            NavigationView{
                AuthenticationView().navigationBarHidden(true)
            }
        }
        .onAppear{
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil ? true : false
        }
        .fullScreenCover(isPresented: !$showSignInView){
            NavigationView{
                HomeView().navigationBarHidden(true)
            }

        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

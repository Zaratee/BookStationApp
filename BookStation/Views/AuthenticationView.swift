import SwiftUI


struct AuthenticationView: View {
    @StateObject private var viewModel = AuthenticationViewModel()
    var body: some View {
        ZStack {
            NavigationLink(destination: HomeView().navigationBarHidden(true) , isActive: $viewModel.isLogged) { }

              Image("loginBg")
                  .resizable()
                  .scaledToFill()
                  .frame(minWidth: 0)
                  .edgesIgnoringSafeArea(.all)
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 65, height: 65)
                    .padding(.vertical)
                TextField("Email", text:$viewModel.email)
                    .frame(height: 10)
                    .padding()
                    .background(Color.black.opacity(0.12))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .autocapitalization(.none)
                SecureField("Password", text:$viewModel.password)
                    .frame(height: 10)
                    .padding()
                    .background(Color.black.opacity(0.12))
                    .cornerRadius(10)
                    .padding()
                
                Text(LocalizedStringKey(viewModel.errorInfo))
                    .frame(width: 210,  alignment: .leading)
                    .foregroundColor(Color.red)
                                    

                Button{
                    Task{
                        do{
                            try await viewModel.signIn()
                            return
                        }
                    }
                }
                    label:{
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(Color.blue)
                        .frame(height: 30)
                        .frame(maxWidth: 130)
                        .cornerRadius(20)
                }
            }
            .frame(width: 250, height: 400, alignment: SwiftUI.Alignment.top)
            .background(Color.white)
            .cornerRadius(10)


          }
        }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}

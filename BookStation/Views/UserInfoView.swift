import SwiftUI

struct UserInfoView: View {
    @StateObject private var viewModel = UserInfoViewModel()
    var body: some View {
        
        Text("UID:")
            .font(.system(size: 14))
            .foregroundStyle(.gray)
            .padding(.top)
        Text(" \(viewModel.authUser?.uid ?? "uid")")
            .padding(.bottom)
        Text("Email:")
            .font(.system(size: 14))
            .foregroundStyle(.gray)
        Text(" \(viewModel.authUser?.email ?? "email")")
        Spacer().navigationBarTitle("User info")
        Text("AppStorage")
            .font(.system(size: 12))
            .foregroundStyle(.gray)
        if !viewModel.showEdit{
            Text("Name: \(UserDefaults.standard.string(forKey: "username") ?? "No name")")
            Button{
                Task{
                    viewModel.showEdit = true
                }
            }
                label:{
                Text("Change Name")
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                }
                .padding()
        }else{
            TextField("Name", text:$viewModel.name)
                .frame(height: 10)
                .padding()
                .background(Color.black.opacity(0.12))
                .cornerRadius(10)
                .padding(.horizontal)
                .autocapitalization(.none)
            Button{
                Task{
                    UserDefaults.standard.set(viewModel.name, forKey: "username")
                    viewModel.name = ""
                    viewModel.showEdit = false
                }
            }
                label:{
                Text("Save")
                    .frame(maxWidth: .infinity)
                    .cornerRadius(5)
                }
                .padding()
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}

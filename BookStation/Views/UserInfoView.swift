import SwiftUI

struct UserInfoView: View {
    let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()

    var body: some View {
        
        Text("UID:")
            .font(.system(size: 14))
            .foregroundStyle(.gray)
            .padding(.top)
        Text(" \(authUser?.uid ?? "uid")")
            .padding(.bottom)
        Text("Email:")
            .font(.system(size: 14))
            .foregroundStyle(.gray)
        Text(" \(authUser?.email ?? "email")")
        Spacer().navigationBarTitle("User info")
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}

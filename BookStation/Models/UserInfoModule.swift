import Foundation

public final class UserInfoViewModel: ObservableObject{
    @Published var authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
    @Published var showEdit = false
    @Published var name = ""
    
    
}


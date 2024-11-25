import Foundation

public final class HomeViewModel: ObservableObject{
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

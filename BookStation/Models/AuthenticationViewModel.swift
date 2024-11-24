
import Foundation


public final class AuthenticationViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorInfo = ""
    @Published var isLogged = false

    func signIn() async throws{
        guard !email.isEmpty, !password.isEmpty else {
            errorInfo = "Incorrect information"
            return
        }
        Task {
            do{
                try await AuthenticationManager.shared.signInUser(email: email, password: password)
                isLogged = true
            }catch{
                errorInfo = "Invalid credentials"
            }
        }
            
    }
}

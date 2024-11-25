import Foundation
import FirebaseAuth

final class AuthenticationManager{

    static let shared = AuthenticationManager()
    private init(){}

    func getAuthenticatedUser() throws -> AuthDataResultModel {
        guard let user = Auth.auth().currentUser else {
        throw URLError(.badServerResponse)
        }
        return AuthDataResultModel(user: user)
    }

    @discardableResult
    func signInUser(email:String, password:String) async throws -> AuthDataResultModel{
        let authDataResult = try await Auth.auth().signIn(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
    func logOut() throws {
        try Auth.auth().signOut()
    }
}


import Foundation


public final class BooksViewModel: ObservableObject{
    @Published var search = ""
    @Published var books : ApiBooksResultModel = ApiBooksResultModel(allBooks: [ApiBooksResultItemModel(id: "", title: "", pages: "")])
    
    func searchBook() async throws {
        guard !search.isEmpty else{
            return
        }
        let result = try await BooksApi.shared.getBooks(search: search.replacingOccurrences(of: " ", with: "+"))
            
        books = result
    }
}


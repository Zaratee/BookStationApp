import Foundation
import SwiftyJSON



final class BooksApi{
    static let shared = BooksApi()
    private init(){}
    @Published var data = [ApiBooksResultModel]()
    
    func getBooks(search:String) async throws -> ApiBooksResultModel{
        let url = "https://www.googleapis.com/books/v1/volumes?q=\(search)"
        var allBooks:[ApiBooksResultItemModel] = []
        
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string:url)!){
            (data, _, err) in
            
           
            if err != nil{
                print((err?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            let  books = json["items"].array!
        
            
            for i in books{
                let id = i["id"].stringValue
                let title = i["volumeInfo"]["title"].stringValue
                let pages = "Pages: \(i["volumeInfo"]["pageCount"].stringValue)"
                
                let bookInfo = ApiBooksResultItemModel(id: id, title: title, pages: pages)
                allBooks.append(bookInfo)
            }
            
        }.resume()
        
        //hide
        try? await Task.sleep(nanoseconds: 1_500_000_000)
        return ApiBooksResultModel(allBooks: allBooks)
    }
}

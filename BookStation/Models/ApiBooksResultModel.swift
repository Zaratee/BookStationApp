import Foundation

struct ApiBooksResultItemModel: Identifiable{
    var id: String
    var title:String
    var pages:String
}

struct ApiBooksResultModel{
    var allBooks : [ApiBooksResultItemModel]
}

 
import SwiftUI

struct BooksView: View {
    @StateObject private var viewModel = BooksViewModel()

    var body: some View {
        VStack{
            HStack{
                TextField("Search book...", text:$viewModel.search)
                    .frame(height: 10)
                    .padding()
                    .background(Color.black.opacity(0.12))
                    .cornerRadius(10)
                    .padding(.leading)
                    .autocapitalization(.none)
                Button{
                    Task{
                        do{
                            try await viewModel.searchBook()
                            return
                        }
                    }
                }
                    label:{
                        Text("Go")
                        .font(.headline)
                        .foregroundColor(Color.blue)
                        .frame(height: 30)
                        .frame(maxWidth: 50)
                        .padding(.horizontal)
                    }
            }
            List{
                ForEach(viewModel.books.allBooks){
                    books in
                    VStack{
                        Text("\(books.title)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("\(books.pages)")
                            .font(.system(size: 12))
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
        }
        
        
        Spacer()
        
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}

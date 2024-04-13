struct Book {
    var title: String
    var author: String
    var isAvailable: Bool
    var borrower: String?
}

class BookManager {
    var books = [Book]()
    
    func addBook(title: String, author: String) {
        let book = Book(title: title, author: author, isAvailable: true, borrower: nil)
        books.append(book)
    }
    
    func listBooks() {
        for book in books {
            print("\(book.title) by \(book.author) - Available: \(book.isAvailable ? "Yes" : "No")")
        }
    }
    
    // Implementar funciones para prestar, devolver y buscar libros.
}


func lendBook(title: String, borrower: String) {
    if let index = books.firstIndex(where: { $0.title == title && $0.isAvailable }) {
        books[index].isAvailable = false
        books[index].borrower = borrower
        print("\(title) has been lent to \(borrower)")
    } else {
        print("Sorry, \(title) is not available for lending.")
    }
}


func returnBook(title: String) {
    if let index = books.firstIndex(where: { $0.title == title && !$0.isAvailable }) {
        books[index].isAvailable = true
        books[index].borrower = nil
        print("\(title) has been returned.")
    } else {
        print("This book is not currently on loan.")
    }
}

func searchBook(title: String) -> Book? {
    return books.first(where: { $0.title == title })
}




let bookManager = BookManager()
bookManager.addBook(title: "The Great Gatsby", author: "F. Scott Fitzgerald")
bookManager.addBook(title: "To Kill a Mockingbird", author: "Harper Lee")
bookManager.addBook(title: "1984", author: "George Orwell")

bookManager.listBooks()
// Output: 
// The Great Gatsby by F. Scott Fitzgerald - Available: Yes
// To Kill a Mockingbird by Harper Lee - Available: Yes
// 1984 by George Orwell - Available: Yes

bookManager.lendBook(title: "The Great Gatsby", borrower: "John")
bookManager.listBooks()
// Output after lending:
// The Great Gatsby by F. Scott Fitzgerald - Available: No
// To Kill a Mockingbird by Harper Lee - Available: Yes
// 1984 by George Orwell - Available: Yes

bookManager.returnBook(title: "The Great Gatsby")
bookManager.listBooks()
// Output after returning:
// The Great Gatsby by F. Scott Fitzgerald - Available: Yes
// To Kill a Mockingbird by Harper Lee - Available: Yes
// 1984 by George Orwell - Available: Yes
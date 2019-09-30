/*
 EXERCISE
 */

//struct Book {
//    let title: String
//    let author: String
//    let price: String?
//    let pubDate: String?
//
//    init?(dict: [String: String]) {
//        self.title = dict["title"]! // bad
//        self.author = dict["author"]! // bad
//        self.price = dict["price"]
//        self.pubDate = dict["pubDate"]
//    }
//}

struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]) {
        guard let title = dict["title"], let author = dict["author"] else {
            return nil
        }
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}

import Foundation

struct Product: Codable {
    var name: String = ""
    var cost: String
    var sizes: String
    var allImages: [URL]
    var isNewArrival: Bool
//    var isTrending: Bool
//    let category: String
//    let fit: String
//    let design: String
}

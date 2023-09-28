import UIKit


struct PostModel: Identifiable {
    var id: String = UUID().uuidString
    var image: UIImage
    var title: String
    var text: String
    var author: String
    var date: String
}

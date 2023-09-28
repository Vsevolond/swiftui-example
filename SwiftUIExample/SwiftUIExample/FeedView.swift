import SwiftUI


struct PostFeedView: View {
    
    var posts: [PostModel]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(posts) { post in
                        NavigationLink {
                            SinglePostView(post: post)
                        } label: {
                            PostCellView(model: post)
                                .shadow(radius: 20)
                                .padding()
                        }
                    }
                }
            }.navigationTitle("Summer Vibes")
        }
//        List {
//            ForEach(posts) { post in
//                PostCellView(model: post)
//                    .shadow(radius: 20)
//                    .listRowSeparator(.hidden)
//            }
//        }
//        .listStyle(.plain)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        PostFeedView(posts: feed)
    }
}


private var feed: [PostModel] = [
    .init(
        image: UIImage(named: "1")!,
        title: "Как же классно летом загорать",
        text: placeholder,
        author: "seva donchenko",
        date: "07.07.2023"
    ),
    .init(
        image: UIImage(named: "2")!,
        title: "Что? Лето уже закончилось?",
        text: placeholder,
        author: "seva donchenko",
        date: "01.07.2023"
    ),
    .init(
        image: UIImage(named: "3")!,
        title: "На летнем вайбе)",
        text: placeholder,
        author: "seva donchenko",
        date: "27.07.2023"
    ),
    .init(
        image: UIImage(named: "4")!,
        title: "Не ну поработать тоже надо, конечно",
        text: placeholder,
        author: "seva donchenko",
        date: "01.08.2023"
    ),
    .init(
        image: UIImage(named: "5")!,
        title: "Это что получается, уже 2 месяца прошло?",
        text: placeholder,
        author: "seva donchenko",
        date: "05.08.2023"
    )
]

private let placeholder = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
"""

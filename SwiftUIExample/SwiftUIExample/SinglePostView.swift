//
//  SinglePostView.swift
//  SwiftUIExample
//
//  Created by Vsevolod Donchenko on 16.08.2023.
//

import SwiftUI

struct SinglePostView: View {
    var post: PostModel
    var isLiked: Bool = false
    
    var body: some View {
        VStack {
            title
            ScrollView {
                VStack(spacing: 0) {
                    imageContent
                    textContent
                }
            }
        }
    }
    
    private var title: some View {
        Text(post.title)
            .font(.title)
            .multilineTextAlignment(.center)
    }
    
    private var imageContent: some View {
        ZStack(alignment: .topTrailing) {
            Image(uiImage: post.image)
                .resizable()
                .scaledToFit()
            VStack {
                VStack {
                    Image(systemName: "heart.fill")
                        .font(.title)
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
    }
    
    private var textContent: some View {
        VStack {
            Text(post.text)
                .multilineTextAlignment(.leading)
        }
        .padding()
    }
}

struct SinglePostView_Previews: PreviewProvider {
    static var previews: some View {
        SinglePostView(post: PostModel(
            image: UIImage(named: "1")!,
            title: "Как же классно летом загорать",
            text: placeholder,
            author: "seva donchenko",
            date: "07.07.2003"
            )
        )
    }
}

private let placeholder = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
"""

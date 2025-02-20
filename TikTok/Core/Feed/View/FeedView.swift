//
//  FeedView.swift
//  TikTok
//
//  Created by Vitor Henrique Barreiro Marinho on 04/11/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear { playInitialVideoIfNecessary() }
                }
            }
            .scrollTargetLayout()
        }
        .onAppear{ player.play() }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition ?? "") { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
        
    }
    
    private func playInitialVideoIfNecessary() {
        guard scrollPosition == nil,
              let post = viewModel.posts.first,
              player.currentItem == nil else { return }
        
        
        let playerItem = AVPlayerItem(url: URL(string: post.videoUrl)!)

        player.replaceCurrentItem(with: playerItem)
    }
    
    private func playVideoOnChangeOfScrollPosition(postId: String) {
        guard let currentPost = viewModel.posts.first(where: {$0.id == postId}) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}

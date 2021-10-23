//
//  VideoPlayerView.swift
//  Africa
//
//  Created by QINXIN SHU on 2021/10/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTY
    var videoSelected: String
    var videoTitle: String
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
            // Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                , alignment: .topLeading
            )
        } //: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}


// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}

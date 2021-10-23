//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by QINXIN SHU on 2021/10/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer? // what's "?" for

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}




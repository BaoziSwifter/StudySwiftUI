//
//  PlaySound.swift
//  StudySwiftCard
//
//  Created by dlf on 2022/1/15.
//

import AVFoundation

// MARK: - 音频播放器
var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("不能播放指定音频")
        }
    }
}

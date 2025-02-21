//
//  AudioPlay_Tool.swift
//  Apple_History
//
//  Created by 赵禹惟 on 2025/2/19.
//

import SwiftUI
import AVFoundation

class AudioPlayerManager: ObservableObject {
    private var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic(named fileName: String, withExtension fileExtension: String) {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension) else {
            print("Music file not found")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.volume = 0.5
            audioPlayer?.play()
        } catch {
            print("Audio player error: \(error.localizedDescription)")
        }
    }
    
    func stopBackgroundMusic() {
        audioPlayer?.stop()
    }
}

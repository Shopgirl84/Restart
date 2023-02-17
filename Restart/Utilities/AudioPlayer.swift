//
//  AudioPlayer.swift
//  Restart
//
//  Created by Andrea Reinicke on 17.02.23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound (sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Oops...no Sound but the Wind.")
        }
    }
    
}

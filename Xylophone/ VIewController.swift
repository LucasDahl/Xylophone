//
//  ViewController.swift
//  Xylophone
//
//  Created by Lucas Dahl on 11/9/18.
//  Copyright © 2018. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    // Properties
    var audioPlayer:AVAudioPlayer?
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // All buttons are linked to this function.
    @IBAction func notePressed(_ sender: UIButton) {
        
        let selectedSoundFileName : String = soundArray[sender.tag - 1]
        
        // Plays the sound
        playSound()
        
    }
    
    func playSound() {
        
        // Get the path for the audio file
        let soundURL = Bundle.main.url(forResource: note, withExtension: "wav")!
        
        // Catch any errors
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            
        } catch {
            
            print("error while trying to get audio file: \(error)")
            
        }
        
        // Plays th eaudio file
        audioPlayer?.play()
        
    }
  

}


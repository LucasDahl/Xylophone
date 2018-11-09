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
    var xylophoneSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // All buttons are linked to this function.
    @IBAction func notePressed(_ sender: UIButton) {
        
        
        
    }
    
  

}


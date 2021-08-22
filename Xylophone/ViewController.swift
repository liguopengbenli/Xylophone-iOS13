//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audio:AVPlayer!

    private func playAudioFromProject(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
          audio = AVPlayer.init(url: url!)
          audio.play()
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPresses(_ sender: UIButton){
        //print(sender.currentTitle)
        playAudioFromProject(soundName: sender.currentTitle!)
    }
    
}


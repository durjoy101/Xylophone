//
//  ViewController.swift
//  Xylophone
//
//  Created by Samar Mitra on 14/11/22.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound (soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}



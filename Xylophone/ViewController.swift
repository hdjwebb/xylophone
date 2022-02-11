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
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        print(sender.currentTitle)
        playSound(sender.currentTitle!)
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 0.2
//          print("Start"
        }
        
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 1
//          print("End")
        }
        
        
        
    }
    
    func playSound(_ resourceName: String) {
        let url = Bundle.main.url(forResource: resourceName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}



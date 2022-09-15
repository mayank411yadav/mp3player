//
//  ViewController.swift
//  Mp3
//
//  Created by Mayank Yadav on 12/09/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    @IBOutlet weak var btnPause: UIButton!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnReplay: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            
        }
    }
    
    @IBAction func onClickedPlay(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func onClickedReplay(_ sender: UIButton) {
        player.currentTime = 0
    }
    
    @IBAction func onClickedPause(_ sender: UIButton) {
        player.pause()
    }
}


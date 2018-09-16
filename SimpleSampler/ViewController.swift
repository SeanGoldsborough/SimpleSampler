//
//  ViewController.swift
//  SimpleSampler
//
//  Created by Sean Goldsborough on 9/16/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()
    var audioPlayer4 = AVAudioPlayer()

    @IBAction func padOne(_ sender: Any) {
        audioPlayer.play()
        
        
    }
    
    @IBAction func padTwo(_ sender: Any) {
        audioPlayer2.play()
    }
    
    @IBAction func padThree(_ sender: Any) {
        audioPlayer3.play()
    }
    
    @IBAction func padFour(_ sender: Any) {
        audioPlayer4.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAudioPlayer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createAudioPlayer() {
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Kick", ofType: ".wav")!))
            print("number of channels is: \(audioPlayer.numberOfChannels)")
            audioPlayer.prepareToPlay()
            
            audioPlayer2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Snare", ofType: ".wav")!))
            audioPlayer2.prepareToPlay()
            
            audioPlayer3 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Kick", ofType: ".wav")!))
            audioPlayer3.prepareToPlay()
            
            audioPlayer4 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Snare", ofType: ".wav")!))
            audioPlayer4.prepareToPlay()
        }
        catch {
            print(error.localizedDescription)
        }
    }


}


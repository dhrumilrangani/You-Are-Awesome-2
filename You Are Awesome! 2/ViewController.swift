//
//  ViewController.swift
//  You Are Awesome! 2
//
//  Created by dhrumil rangani on 9/8/20.
//  Copyright © 2020 dhrumil rangani. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    var totalSounds = 6
    var totalImages = 9
    var audioPlayer : AVAudioPlayer!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error")
            }
        } else {
                print("Error")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperlimit:Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperlimit)
        }while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("Button was pressed")
        
        let message=["Act as if what you do makes a difference. It does.",
                     "Success is not final, failure is not fatal: it is the courage to continue that counts.",
                     "Never bend your head. Always hold it high. Look the world straight in the eye.",
                     "Believe you can and you're halfway there."]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperlimit: message.count-1)
        messageLabel.text = message[messageNumber]
        
   
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperlimit: totalImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber  = nonRepeatingRandom(originalNumber: soundNumber, upperlimit: totalSounds-1)
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        }
        
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil{
            audioPlayer.stop()
        } 
    }
}

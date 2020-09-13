//
//  ViewController.swift
//  You Are Awesome! 2
//
//  Created by dhrumil rangani on 9/8/20.
//  Copyright © 2020 dhrumil rangani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var imageNumber = 0
    var messageNumber = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        print("Button was pressed")
        
        let message=["Act as if what you do makes a difference. It does.",
                     "Success is not final, failure is not fatal: it is the courage to continue that counts.",
                     "Never bend your head. Always hold it high. Look the world straight in the eye.",
                     "Believe you can and you're halfway there."]
        messageLabel.text=message[messageNumber]
        messageNumber+=1
        if messageNumber==4 {
            messageNumber=0
        }
        
        
        print(imageNumber)
//        let imageName="image"+String(imageNumber)
        let imageName="image\(imageNumber)"
        
        imageView.image=UIImage(named: imageName)
        imageNumber=imageNumber+1
        if imageNumber==10 {
            imageNumber=0
        }
        
//        let messageAwesome = "You Are Awesome!"
//        let messageGreat = "You Are Great!"
//        let messageDaBomb = "You Are Da Bomb!"
//
//        if messageLabel.text==messageAwesome {
//            messageLabel.text=messageGreat
//            imageView.image=UIImage(named: "image1")
//        } else if messageLabel.text==messageGreat {
//            messageLabel.text=messageDaBomb
//            imageView.image=UIImage(named: "image2")
//        } else {
//            messageLabel.text=messageAwesome
//            imageView.image=UIImage(named: "image0")
//        }
    }
    
    
}


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
    var imageNumber = -1
    var messageNumber = -1
    var totalImages = 9
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("Button was pressed")
        
        let message=["Act as if what you do makes a difference. It does.",
                     "Success is not final, failure is not fatal: it is the courage to continue that counts.",
                     "Never bend your head. Always hold it high. Look the world straight in the eye.",
                     "Believe you can and you're halfway there."]
        
        var newMessageNumber: Int = Int.random(in: 0...message.count-1)
        repeat {
            newMessageNumber = Int.random(in: 0...message.count-1)
        }while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = message[messageNumber]
        
   
        var newImageNumber: Int = Int.random(in: 0...totalImages)
        repeat {
            newImageNumber = Int.random(in: 0...totalImages)
        }while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
    

}
}

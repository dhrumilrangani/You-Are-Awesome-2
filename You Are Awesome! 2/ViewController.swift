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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text="Guess What?"
    }
    
    @IBAction func messageButtonPressed(_ sender: Any) {
        let messageAwesome = "You Are Awesome!"
        let messageGreat = "You Are Great!"
        let messageDaBomb = "You Are Da Bomb!"
        
        if messageLabel.text==messageAwesome {
            messageLabel.text=messageGreat
            imageView.image=UIImage(named: "image1")
        } else if messageLabel.text==messageGreat {
            messageLabel.text=messageDaBomb
            imageView.image=UIImage(named: "image2")
        } else {
            messageLabel.text=messageAwesome
            imageView.image=UIImage(named: "image0")
        }
    }
    
    
}


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
        print("Button Was Pressed")
        messageLabel.text="You Are Awesome!"
        imageView.image=UIImage(named: "image0")
    }
  
    
}


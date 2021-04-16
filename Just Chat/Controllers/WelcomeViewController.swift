//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Animate the title text
        titleLabel.text = ""
        // charIndex used to customize TimeInterval for Timer
        var charIndex = 0.0
        let titleText = "⚡️Just Chat"
        for character in titleText {
            // Use closure
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(character)
            }
            charIndex += 1
        }
       
    }
    

}

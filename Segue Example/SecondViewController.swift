//
//  SecondViewController.swift
//  Segue Example
//
//  Created by James Tapping on 10/07/2020.
//  Copyright © 2020 James Tapping. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textToSend: String?

    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        output.text = textToSend
    }

    @IBAction func buttonBack(_ sender: UIButton) {
        
        //Animate the button
        
        UIButton.animate(withDuration: 0.2,
                         animations: {
                            sender.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
        },
                         completion: { finish in
                            UIButton.animate(withDuration: 0.2, animations: {
                                sender.transform = CGAffineTransform.identity
                            })
        })
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}

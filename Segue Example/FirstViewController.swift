//
//  ViewController.swift
//  Segue Example
//
//  Created by James Tapping on 10/07/2020.
//  Copyright © 2020 James Tapping. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textEntered: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
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
        
        self.performSegue(withIdentifier: "goToOutput", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToOutput" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textToSend = textEntered.text
            
    }
    
}

}

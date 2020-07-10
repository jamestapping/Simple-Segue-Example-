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

    @IBAction func buttonPressed(_ sender: Any) {
        
        
        self.performSegue(withIdentifier: "goToOutput", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToOutput" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textToSend = textEntered.text
            
    }
    
}

}

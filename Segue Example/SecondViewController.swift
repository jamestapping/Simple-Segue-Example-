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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

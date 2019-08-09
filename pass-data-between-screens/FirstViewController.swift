//
//  ViewController.swift
//  pass-data-between-screens
//
//  Created by Will on 9/8/19.
//  Copyright © 2019 Will. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstScreenLabel: UILabel!
    @IBOutlet weak var firstScreenTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func firstScreenBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    @IBAction func switchToPinkBackground(_ sender: UIButton) {
        view.backgroundColor = UIColor.blue
    }
    
    //    prepare for segue: override prepare func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.inputFromFirstVC = firstScreenTextField.text
        }
    }
}


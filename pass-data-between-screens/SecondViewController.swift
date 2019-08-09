//
//  SecondViewController.swift
//  pass-data-between-screens
//
//  Created by Will on 9/8/19.
//  Copyright © 2019 Will. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var secondScreenLabel: UILabel!
    @IBOutlet weak var secondScreenTextField: UITextField!
    
    var inputFromFirstVC: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        secondScreenLabel.text = inputFromFirstVC
    }
    
    @IBAction func secondScreenBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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

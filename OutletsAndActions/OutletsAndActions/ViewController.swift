//
//  ViewController.swift
//  OutletsAndActions
//
//  Created by Jasur Tursunov on 13.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    @IBAction func buttonTapped(_ sender: UIButton) {
        label.textColor = UIColor.green
    }
    
}


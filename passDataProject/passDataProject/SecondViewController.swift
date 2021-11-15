//
//  SecondViewController.swift
//  passDataProject
//
//  Created by Jasur Tursunov on 15.11.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    @IBOutlet weak var labelTF: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        labelTF.text = "Hello \(login)!"
    }
    
    
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}

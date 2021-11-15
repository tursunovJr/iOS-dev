//
//  ViewController.swift
//  passDataProject
//
//  Created by Jasur Tursunov on 15.11.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var resultTF: UILabel!
    
    
    @IBAction func loginPassed(_ sender: UIButton) {
        performSegue(withIdentifier: "secondPage", sender: nil)
    }
    
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        resultTF.text = svc.labelTF.text
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}




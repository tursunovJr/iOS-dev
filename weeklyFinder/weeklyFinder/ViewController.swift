//
//  ViewController.swift
//  weeklyFinder
//
//  Created by Jasur Tursunov on 13.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    
    @IBOutlet weak var resultTF: UILabel!
    
    
    @IBAction func findDayButton(_ sender: UIButton) {
        guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "eeee"
        
        let weekday = dateFormatter.string(from: date)
        var capitalizedWeekDay = weekday.capitalized
        
        if capitalizedWeekDay == "Пятница" {
            capitalizedWeekDay = "Пятница, пора нахуяриться)"
        }
        
        resultTF.text = weekday
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


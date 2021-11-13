//
//  ViewController.swift
//  temperatureConventer
//
//  Created by Jasur Tursunov on 13.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiumLabel: UILabel!
    
    @IBOutlet weak var fahrengeitLabel: UILabel!
    @IBOutlet weak var sliderLabel: UISlider! {
        didSet {
            sliderLabel.maximumValue = 100
            sliderLabel.minimumValue = 0
            sliderLabel.value = 0
        }
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        let celsiumTemperature = Int(round(sender.value))
        celsiumLabel.text = "\(celsiumTemperature)ºC"
        let fahrengeitTemperature = Int(round((sender.value * 9 / 5 ) + 32))
        fahrengeitLabel.text = "\(fahrengeitTemperature)ºF"
    }
}


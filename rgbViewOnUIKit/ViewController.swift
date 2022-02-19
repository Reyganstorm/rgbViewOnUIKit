//
//  ViewController.swift
//  rgbViewOnUIKit
//
//  Created by Руслан Штыбаев on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 25
        
        redLabel.text =
        String(format: "%.0f", redSlider.value)
        rgbColorChanging()
        greenLabel.text = String(format: "%.0f", greenSlider.value)
        rgbColorChanging()
        blueLabel.text = String(format: "%.0f", blueSlider.value)
        rgbColorChanging()
    }

    @IBAction func redSliderAction() {
        redLabel.text =
        String(format: "%.0f", redSlider.value)
        rgbColorChanging()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.0f", greenSlider.value)
        rgbColorChanging()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.0f", blueSlider.value)
        rgbColorChanging()
    }
    
    
    private func rgbColorChanging() {
        rgbView.backgroundColor = UIColor(red: CGFloat(redSlider.value/366), green: CGFloat(greenSlider.value/366), blue: CGFloat(blueSlider.value/366), alpha: 1)
    }
}


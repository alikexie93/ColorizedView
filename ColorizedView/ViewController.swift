//
//  ViewController.swift
//  ColorizedView
//
//  Created by Алексей Филиппов on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    @IBOutlet var colorizedView: UIView!

    //MARK: - IBActions
    @IBAction func sliderChangeColor() {
        redSliderValue.text = redSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        greenSliderValue.text = greenSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        blueSliderValue.text = blueSlider.value.formatted(
            .number.precision(.fractionLength(2))
        )
        
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
}


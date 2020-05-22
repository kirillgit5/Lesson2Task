//
//  ViewController.swift
//  Lesson2Task
//
//  Created by Кирилл Крамар on 22.05.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redCurrentValueLabel: UILabel!
    @IBOutlet weak var greenCurrentValueLabel: UILabel!
    @IBOutlet weak var blueCurrentValueLabel: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        setupLabels()
        setupView()
    }
    // MARK: - IB Actions
    @IBAction func changeColorRed() {
        setupView()
        redCurrentValueLabel.text = String(redSlider.value)
        redCurrentValueLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func changeColorGreen() {
        setupView()
        greenCurrentValueLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func changeColorBlue() {
        setupView()
        blueCurrentValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    // MARK: - Private Methods
    private func setupLabels(){
        redCurrentValueLabel.text = String(format: "%.2f", redSlider.value)
        greenCurrentValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueCurrentValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    private func setupView(){
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    private func setupSliders(){
        
        greenSlider.maximumValue = 255.0/255
        greenSlider.minimumValue = 0
        greenSlider.setValue(0, animated: true)
        greenSlider.minimumTrackTintColor = .green
        
        redSlider.maximumValue   = 255.0/255
        redSlider.minimumValue   = 0
        redSlider.setValue(127.0/255, animated: true)
        redSlider.minimumTrackTintColor   = .red
        
        blueSlider.maximumValue  = 255.0/255
        blueSlider.minimumValue  = 0
        blueSlider.setValue(127.0/255, animated: true)
        blueSlider.minimumTrackTintColor  = .blue
    }
}


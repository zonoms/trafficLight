//
//  ViewController.swift
//  trafficLight
//
//  Created by ADMIN on 20.05.2020.
//  Copyright © 2020 Arkadij Ryabov. All rights reserved.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
   
    @IBAction func buttonPressed() {
            button.setTitle("NEXT", for: .normal)
                
                switch currentLight {
                case .red:
                    greenLight.alpha = lightIsOff
                    redLight.alpha = lightIsOn
                    currentLight = .yellow
                case .yellow:
                    redLight.alpha = lightIsOff
                    yellowLight.alpha = lightIsOn
                    currentLight = .green
                case .green:
                    greenLight.alpha = lightIsOn
                    yellowLight.alpha = lightIsOff
                    currentLight = .red
                }
            }
        }


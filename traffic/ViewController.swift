//
//  ViewController.swift
//  traffic
//
//  Created by Nikita and Margarita on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var buttonLight: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        
        
    }
    //          А ЕСЛИ СНЯТЬ КОММЕНТАРИЙ С ЭТОГО КОДА, ТО НОРМАЛЬНО ОТОБРАЖАЕТСЯ И НА SE и на 11. Но что он значит я не понимаю
    
    
//    override func viewDidAppear(_ animated: Bool) {
//            super.viewDidAppear(animated)
//        redLight.layer.cornerRadius = redLight.frame.size.height / 2
//        yellowLight.layer.cornerRadius = yellowLight.frame.size.height / 2
//        greenLight.layer.cornerRadius = greenLight.frame.size.height / 2
//            }
        
    

    @IBAction func pressetLight(_ sender: UIButton) {
        
        if buttonLight.title(for: .normal) == "START" {
            
            buttonLight.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
            buttonLight.setTitleColor(.red, for: .normal)
            
        } else if redLight.alpha == 1 {
            
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            buttonLight.setTitleColor(.yellow, for: .normal)
            
        } else if yellowLight.alpha == 1 {
            
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            buttonLight.setTitleColor(.green, for: .normal)
            
        } else if greenLight.alpha == 1 {
            
            greenLight.alpha = 0.3
            redLight.alpha = 1
            buttonLight.setTitleColor(.red, for: .normal)
        }
        
    }
    
}


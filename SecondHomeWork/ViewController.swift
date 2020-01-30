//
//  ViewController.swift
//  SecondHomeWork
//
//  Created by Admin on 30.01.2020.
//  Copyright © 2020 UshakovAndrey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var button: UIButton!
    private var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        redView.layer.cornerRadius = 70
        redView.alpha = 0.2
        yellowView.layer.cornerRadius = 70
        yellowView.alpha = 0.2
        greenView.layer.cornerRadius = 70
        greenView.alpha = 0.2
        
        
      
    }


    @IBAction func pressButton(_ sender: UIButton) {
        button.setTitle("NEXT", for: .normal)
        
        switch count {
        case 1:
            greenView.alpha = 0.2
            redView.alpha = 1
            count += 1
        case 2:
            redView.alpha = 0.2
            yellowView.alpha = 1
            count += 1
        case 3:
            yellowView.alpha = 0.2
            greenView.alpha = 1
            count = 1
        default:
            count = 1
        }
        
    }
    
}


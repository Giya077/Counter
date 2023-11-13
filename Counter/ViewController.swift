//
//  ViewController.swift
//  Counter
//
//  Created by Giya Dorgatov on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttom: UIButton!
    
    @IBOutlet var counterLabel: UILabel!
    
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCounterLabel()
    }
    
    
    @IBAction func plusButtonTap(_ sender: UIButton) {
      counter += 1
        updateCounterLabel()
    }
    func updateCounterLabel() {
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    

}


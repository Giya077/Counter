//
//  ViewController.swift
//  Counter
//
//  Created by Giya Dorgatov on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var buttonPlus: UIButton!
    
    @IBOutlet private weak var buttonMinus: UIButton!
    
    @IBOutlet private weak var zeroButton: UIButton!
    
    @IBOutlet private var counterLabel: UILabel!
    
    private let start = "История изменений"
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = start
        buttonPlus.tintColor = .red
        buttonMinus.tintColor = .blue
        counterLabel.textColor = .black
    }
    
    @IBAction private func plusButtonTap(_ sender: UIButton) {
        counter += 1
        updateCounterLabel()
        print("плюс")
    }
    
    @IBAction private func minusBottonTap(_ sender: UIButton) {
        if counter > 0 {
            counter -= 1
            updateCounterLabel()
            print("минус")
        }
    }
    
    @IBAction private func zetoButtonTap(_ sender: UIButton) {
        counter = 0
        updateCounterLabel()
        print("Zero")
    }
    
  private func updateCounterLabel() {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDateAndTime = dateFormater.string(from: Date())
        
        if counter == 0 {
            counterLabel.text = "[\(currentDateAndTime)]: Значение сброшено: 0"
        } else {
            counterLabel.text = "[\(currentDateAndTime)]: Значение изменено на: \(counter)"
        }
    }
}



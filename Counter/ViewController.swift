//
//  ViewController.swift
//  Counter
//
//  Created by Giya Dorgatov on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var buttom: UIButton! //если меняю в коде имя на с buttom на button выдает ошибку Thread 1: "[<Counter.ViewController 0x10de0a460> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key buttom." Как я понял после изменения он жалуеться на аутлет, как отредактировать на имя которое исплавляю не разобрался в самом аутлете. По этому оставил так как есть с кривым но рабочим названием))))
    
    @IBOutlet private   weak var buttonMinus: UIButton!
    
    @IBOutlet private weak var zeroButton: UIButton!
    
    @IBOutlet private var counterLabel: UILabel!
    
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let start = "История изменений" // хотел бы сделать тип доступа приватным т.к не вижу смысла в дальнейшем использовании но не получилось.
        counterLabel.text = start
    
//        updateCounterLabel()
        
        buttom.tintColor = .red
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



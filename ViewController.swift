//
//  ViewController.swift
//  ClickCounterApp
//
//  Created by Meghan Ryan on 1/6/20.
//  Copyright © 2020 Meghan Ryan. All rights reserved.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // second label
              let secondLabel = UILabel()
              secondLabel.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
              secondLabel.text = "0"
              view.addSubview(secondLabel)
              self.secondLabel = secondLabel
        
        // + button
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 100, y: 350, width: 100, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
       incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)
        
        // - button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 200, y: 350, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
       decrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementButton)
        
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        incrementButton.addTarget(self, action: #selector(ViewController.backgroundColor), for: UIControl.Event.touchUpInside)
        
         decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
        decrementButton.addTarget(self, action: #selector(ViewController.backgroundColor), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
    }

    @objc func decrementCount() {
          self.count -= 1
          self.label.text = "\(self.count)"
          self.secondLabel.text = "\(self.count)"
      }
    
    //background color
    @objc func backgroundColor() {
      self.view.backgroundColor = .random()
    }
    


    
}


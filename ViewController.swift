//
//  ViewController.swift
//  ClickCounterApp
//
//  Created by Meghan Ryan on 1/6/20.
//  Copyright © 2020 Meghan Ryan. All rights reserved.
//

import UIKit

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
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
    }


}


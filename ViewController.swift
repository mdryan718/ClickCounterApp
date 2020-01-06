//
//  ViewController.swift
//  ClickCounterApp
//
//  Created by Meghan Ryan on 1/6/20.
//  Copyright © 2020 Meghan Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        // Do any additional setup after loading the view.
    }


}


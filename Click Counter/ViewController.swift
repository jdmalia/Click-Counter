//
//  ViewController.swift
//  Click Counter
//
//  Created by Jason Malia on 8/9/16.
//  Copyright © 2016 Jason Malia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count:Int = 0
    var counterLabelA:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func incrementCount() {
        self.count += 1
        self.counterLabelA.text = "\(self.count)"
    }
}


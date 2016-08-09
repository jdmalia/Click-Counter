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
    var counterLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Counter label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.counterLabel = label
        
        // Counter Button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        // Add target action to button
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount() {
        self.count += 1
        self.counterLabel.text = "\(self.count)"
    }

}


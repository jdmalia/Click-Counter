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
    var counterLabelB:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Counter label A
        let labelA = UILabel()
        labelA.frame = CGRectMake(150, 150, 60, 60)
        labelA.text = "0"
        self.view.addSubview(labelA)
        self.counterLabelA = labelA
        
        // Counter label B
        let labelB = UILabel()
        labelB.frame = CGRectMake(300, 150, 60, 60)
        labelB.text = "0"
        self.view.addSubview(labelB)
        self.counterLabelB = labelB
        
        // Increment Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 150, 60)
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        // Add target action to button
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
        // Decrement Button
        button = UIButton()
        button.frame = CGRectMake(150, 350, 150, 60)
        button.setTitle("Decrement", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        // Add target action to button
        button.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount() {
        self.count += 1
        self.counterLabelA.text = "\(self.count)"
        self.counterLabelB.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count -= 1
        self.counterLabelA.text = "\(self.count)"
        self.counterLabelB.text = "\(self.count)"
    }

}


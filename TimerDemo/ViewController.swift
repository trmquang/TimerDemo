//
//  ViewController.swift
//  TimerDemo
//
//  Created by Quang Minh Trinh on 8/31/16.
//  Copyright © 2016 Quang Minh Trinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerView: UIView!
    var dropDown: CABasicAnimation!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
//        timerViewHeightConstraint.constant = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        animateTimer()
        
    }
    
    @IBAction func reloadBtn_TouchUpInside(sender: UIButton) {
        timerView.layer.removeAnimationForKey("position.y")
        animateTimer()
        
    }
    func animateTimer() {
        dropDown = CABasicAnimation(keyPath: "position.y")
        dropDown.fromValue = -view.frame.height/2
        dropDown.toValue = view.frame.height/2
        dropDown.duration = 20
        timerView.layer.addAnimation(dropDown, forKey: nil)
    }

}


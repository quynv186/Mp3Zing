//
//  ViewController.swift
//  Mp3
//
//  Created by techmaster on 10/13/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var ten: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo!.alpha = 0
        text!.alpha = 0
        ten!.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 4, animations: {
            self.logo.alpha = 1
            }, completion: {(finished) in UIView.animate(withDuration: 3, animations: {
                self.text!.center = CGPoint(x: self.logo!.center.x, y: 100)
                    self.text!.alpha = 1
                }, completion: { (finished) in UIView.animate(withDuration: 2, animations: {
                    self.ten!.center = CGPoint(x: self.text!.center.x, y: 570)
                    self.ten!.alpha = 1
                })
            })
        })
    }

}


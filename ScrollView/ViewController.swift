//
//  ViewController.swift
//  ScrollView
//
//  Created by PASHA on 07/08/18.
//  Copyright © 2018 Pasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginClick: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginClick.layer.cornerRadius = self.loginClick.frame.size.height/2 - 2
        self.loginClick.layer.masksToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginTap(_ sender: Any) {
        
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.loginClick.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                self.loginClick.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
           
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


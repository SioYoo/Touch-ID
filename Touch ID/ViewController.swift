//
//  ViewController.swift
//  Touch ID
//
//  Created by SioYoo on 2019/4/27.
//  Copyright © 2019 SioYoo. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Authentication(_ sender: Any)
    {
        let context:LAContext = LAContext()
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        {
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Authentication with your Face ID") { (correct, error) in
                if correct
                {
                    print("Authenticated")
                }
                else
                {
                    print ("Try Again")
                }
            }
        }
    }
    
}


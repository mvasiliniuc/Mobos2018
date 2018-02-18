//
//  PasteBoardViewController.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/5/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

class PasteBoardViewController: UIViewController, UITextFieldDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

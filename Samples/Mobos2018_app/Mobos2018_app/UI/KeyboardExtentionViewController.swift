//
//  KeyboardExtentionViewController.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/9/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

class KeyboardExtentionViewController: UIViewController, UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

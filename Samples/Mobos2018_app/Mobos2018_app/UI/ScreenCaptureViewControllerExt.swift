//
//  SensitiveFIeldsControllerExt.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/5/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

/// Extension contains code that is not relevant to the presentation
extension ScreenCaptureViewController : UITextFieldDelegate {
    @IBAction func handleAppLevelValueChange(_ sender: UISwitch) {
        if let currentDelegate = UIApplication.shared.delegate as? AppDelegate {
            currentDelegate.safeCaptureEnabled = sender.isOn
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        previousTextFieldContent = textField.text;
        previousSelection = textField.selectedTextRange;
        return true
    }
}

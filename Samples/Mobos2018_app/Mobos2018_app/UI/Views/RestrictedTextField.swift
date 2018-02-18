//
//  RestrictedTextField.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/13/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

/// Safer Text Field
class RestrictedTextField: UITextField {
    override func canPerformAction(_ action: Selector,
                                   withSender sender: Any?) -> Bool {
        // Avoid cut and copy operations
        if action == #selector(cut(_:)) ||
            action == #selector(copy(_:)) {
            return false
        }
        return true;
    }
}

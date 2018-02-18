//
//  SecondViewController.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/5/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

class ScreenCaptureViewController: UIViewController {
    // MARK: Text preservation
    var previousTextFieldContent: String?
    var previousSelection: UITextRange?
    
    // MARK: IBOutlets
    @IBOutlet var cardInputField: UITextField!
    @IBOutlet var cardIntroField: UILabel!

    @IBOutlet var cvvInputField: UITextField!
    @IBOutlet var dateInputField: UITextField!
    
    // MARK: Lifecycle Events
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(hideSensitiveFields(notification:)),
                                               name: NSNotification.Name.UIApplicationDidEnterBackground,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSensitiveFields(notification:)),
                                               name: NSNotification.Name.UIApplicationWillEnterForeground,
                                               object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: NotificationCenter Handlers

extension ScreenCaptureViewController {
    @objc func hideSensitiveFields(notification: NSNotification) {
        self.cardInputField.isSecureTextEntry = true
        self.cvvInputField.isSecureTextEntry = true
        self.dateInputField.isSecureTextEntry = true
    }
    
    @objc func showSensitiveFields(notification: NSNotification) {
        self.cardInputField.isSecureTextEntry = false
        self.cvvInputField.isSecureTextEntry = false
        self.dateInputField.isSecureTextEntry = false
    }
}

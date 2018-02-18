//
//  StatePreservationViewController.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/10/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

class StatePreservationViewController: UIViewController {
    var imagePickerController = UIImagePickerController()
    
    @IBOutlet var textHolder: UITextView!
    @IBOutlet var imageHolder: UIImageView!
}

// MARK: UIStateRestoring Extension

extension StatePreservationViewController {
    override func encodeRestorableState(with coder: NSCoder) {
        if let inputText = textHolder?.text {
            coder.encode(inputText, forKey: "textInput")
        }
        if let image = imageHolder?.image {
            coder.encode(UIImagePNGRepresentation(image), forKey: "imageInput")
        }
        
        super.encodeRestorableState(with: coder)
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        if let inputText = coder.decodeObject(forKey:"textInput") as? String {
            textHolder?.text = inputText
        }
        
        if let imageData = coder.decodeObject(forKey:"imageInput") as? Data {
            let image = UIImage(data: imageData)
            imageHolder?.image = image
        }
        
        super.decodeRestorableState(with: coder)
    }
}

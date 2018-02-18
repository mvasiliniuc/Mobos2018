//
//  StatePreservationExt.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/12/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

/// Extension contains code that is not relevant to the presentation
extension StatePreservationViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePickerController.modalPresentationStyle = .currentContext
        imagePickerController.delegate = self
    }
    
    @IBAction func handleGallerySelection(_ sender: Any) {
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.modalPresentationStyle = UIModalPresentationStyle.popover
        present(imagePickerController, animated: true, completion: {})
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageHolder.image = image
        }
        dismiss(animated: true, completion: {})
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: {})
    }
}

//
//  AppDelegateExt.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/12/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

extension AppDelegate {
    public func createSafeCaptureImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = false
        imageView.image = UIImage(named: AppResource.captureBackground.imageName)
        return imageView
    }
}

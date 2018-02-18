//
//  AppDelegate.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/5/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var safeCaptureEnabled: Bool = true
    
    var window: UIWindow?
    
    private lazy var safeCaptureImageView = createSafeCaptureImageView()
}

// MARK: Task Switcher

extension AppDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        application.isStatusBarHidden = false
        
        // Setup Task Switcher View
        if let windowBounds = window?.bounds {
            safeCaptureImageView.frame = windowBounds
        }
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        guard safeCaptureEnabled else {return}
        
        // Add task-switcher image on top
        window?.addSubview(safeCaptureImageView)
        window?.bringSubview(toFront: safeCaptureImageView)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Remove task-switcher image
        self.safeCaptureImageView.removeFromSuperview()
    }
}

// MARK: State Preservation - Setup

extension AppDelegate {
    func application(_ application: UIApplication,
                     willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        window?.makeKeyAndVisible()
        return true
    }
    
    func application(_ application: UIApplication,
                     shouldSaveApplicationState coder: NSCoder) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication,
                     shouldRestoreApplicationState coder: NSCoder) -> Bool {
        return true
    }
}

// MARK: State Preservation - Setup

extension AppDelegate {
    func application(_ application: UIApplication,
                     shouldAllowExtensionPointIdentifier extensionPointIdentifier: UIApplicationExtensionPointIdentifier) -> Bool {
        // We forbit keyboard extensions
        if extensionPointIdentifier == .keyboard {
            return false
        }

        // We permit every other type of extension.
        return true
    }
}


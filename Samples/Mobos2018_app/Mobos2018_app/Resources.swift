//
//  Resources.swift
//  Mobos2018_app
//
//  Created by Mircea Vasiliniuc on 2/5/18.
//  Copyright © 2018 Mircea Vasiliniuc. All rights reserved.
//

import UIKit

enum AppResource {
    case captureBackground
    
    var imageName: String {
        switch self {
        case .captureBackground:
            return "taskSwitcher.png"
        }
    }
}

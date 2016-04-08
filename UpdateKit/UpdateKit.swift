//
//  UpdateKit.swift
//  UpdateKit
//
//  Created by Kyle Goslan on 08/04/2016.
//  Copyright © 2016 Kyle Goslan. All rights reserved.
//

import UIKit

public class UpdateKit {
    
    private let defaults = NSUserDefaults.standardUserDefaults()
    let appVersion = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") as! String
    
    public init() {
        if defaults.valueForKey("appVersion") == nil {
            self.saveAppVerison()
        }
    }
    
    public func firstLaunch(completion: (() -> Void)?) {
        if defaults.valueForKey("launched") == nil {
            completion!()
            self.saveFirstLaunch()
        }
    }
    
    public func appUpdate(completion: ((appVersion: String) -> Void)?) {
        let savedAppVersion = defaults.valueForKey("appVersion") as? String
        
        if savedAppVersion != appVersion {
            saveAppVerison()
            completion!(appVersion: appVersion)
        }
    }
    
    private func saveAppVerison() {
        defaults.setValue(appVersion, forKey: "appVersion")
    }
    
    private func saveFirstLaunch() {
        defaults.setValue(true, forKey: "launched")
    }
    
}


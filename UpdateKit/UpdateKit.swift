//
//  UpdateKit.swift
//  UpdateKit
//
//  Created by Kyle Goslan on 08/04/2016.
//  Copyright © 2016 Kyle Goslan. All rights reserved.
//

import UIKit

public class UpdateKit {
    
    /// UpdateKit uses user defaults to check updates.
    private let defaults = NSUserDefaults.standardUserDefaults()
    
    /// The current app version.
    let appVersion = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") as! String
    
    /// Defult init. Checks ot see if update kit has ever previously run, if not calls the saveAppVersion() method.
    public init() {
        if defaults.valueForKey("appVersion") == nil {
            self.saveAppVerison()
        }
    }
    
    /*
     Checks to see if the app has alunched. If not it saves a "launched" key in user defaults 
     which is set to true and calls its completion block.
     
     - Parameter completion:   Will be called the first time the user launches the app.
    */
    public func firstLaunch(completion: (() -> Void)) {
        if defaults.valueForKey("launched") == nil {
            completion()
            self.saveFirstLaunch()
        }
    }
    
    /*
     Checks the current version of the app against the pervious saved version. If they don't match
     the completion block gets called, and passed in the current app verson.
     
     - Parameter completion:   Will be called when the app is updated. Will always be called once.
     */
    public func appUpdate(completion: ((appVersion: String) -> Void)) {
        let savedAppVersion = defaults.valueForKey("appVersion") as? String
        
        if savedAppVersion != appVersion {
            saveAppVerison()
            completion(appVersion: appVersion)
        }
    }
    
    /*
     Save the current app version the user defaults.
    */
    private func saveAppVerison() {
        defaults.setValue(appVersion, forKey: "appVersion")
    }
    
    /*
     Save that the app has been launched to user defaults.
    */
    private func saveFirstLaunch() {
        defaults.setValue(true, forKey: "launched")
    }
    
}


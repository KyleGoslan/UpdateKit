//
//  UpdateKit.swift
//  UpdateKit
//
//  Created by Kyle Goslan on 08/04/2016.
//  Copyright © 2016 Kyle Goslan. All rights reserved.
//

import UIKit

open class UpdateKit {
    
    /// UpdateKit uses user defaults to check updates.
    fileprivate let defaults = UserDefaults.standard
    
    /// The current app version.
    let appVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    
    /// Defult init. Checks ot see if update kit has ever previously run, if not calls the saveAppVersion() method.
    public init() {
        if defaults.value(forKey: "appVersion") == nil {
            self.saveAppVerison()
        }
    }
    
    /*
     Checks to see if the app has alunched. If not it saves a "launched" key in user defaults 
     which is set to true and calls its completion block.
     
     - Parameter completion:   Will be called the first time the user launches the app.
    */
    open func firstLaunch(_ completion: (() -> Void)) {
        if defaults.value(forKey: "launched") == nil {
            completion()
            self.saveFirstLaunch()
        }
    }
    
    /*
     Checks the current version of the app against the pervious saved version. If they don't match
     the completion block gets called, and passed in the current app verson.
     
     - Parameter completion:   Will be called when the app is updated. Will always be called once.
     */
    open func appUpdate(_ completion: ((_ appVersion: String) -> Void)) {
        let savedAppVersion = defaults.value(forKey: "appVersion") as? String
        
        if savedAppVersion != appVersion {
            saveAppVerison()
            completion(appVersion)
        }
    }
    
    /*
     Save the current app version the user defaults.
    */
    fileprivate func saveAppVerison() {
        defaults.setValue(appVersion, forKey: "appVersion")
    }
    
    /*
     Save that the app has been launched to user defaults.
    */
    fileprivate func saveFirstLaunch() {
        defaults.setValue(true, forKey: "launched")
    }
    
}


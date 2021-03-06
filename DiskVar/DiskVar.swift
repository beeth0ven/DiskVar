//
//  DiskVar.swift
//  UserDefaults
//
//  Created by luojie on 16/1/14.
//  Copyright © 2016年 LuoJie. All rights reserved.
//

import Foundation

/**
 Provide a convenience method to access NSUserDefaults,
 usage:
 
 ```swift
 class ViewController: UIViewController {
 
    private var history = DiskVar<[String]>(key: "ViewController.history", defaultValue: ["cat"])
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // get
        print(history.value)// ["cat"]
 
        // set
        history.value.append("dog")// ["cat", "dog"]
 
    }
 
 }
 
 ```
 ViewController's Property history is a Array of String which has a defaultValue of ["cat"].
 "ViewController.history" is the key used in NSUserDefaults which should be unique in the project.
 And the history'value will not be lost even if the app is closed.
 */
public struct DiskVar<VarType> {
    public let key: String
    public let defaultValue: VarType
    
    public init(key: String, defaultValue: VarType) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    public var value: VarType {
        get { return userDefaults.objectForKey(key) as? VarType ?? defaultValue }
        set { userDefaults.setObject(newValue as? AnyObject, forKey: key); userDefaults.synchronize() }
    }
    
    private var userDefaults: NSUserDefaults { return NSUserDefaults.standardUserDefaults() }
    
}

//
//  Preferences.swift
//  Menubar Colors
//
//  Created by Nikolai Vazquez on 7/19/15.
//  Copyright (c) 2015 Nikolai Vazquez. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

//  Mark: Preferences Class
class Preferences {
    
    // MARK: Static Constants
    
    static let sharedPreferences: Preferences = Preferences(path: AppSupportHandler.SharedHandler.preferencesFile)
    
    
    // MARK: Private Variables
    
    private struct Keys {
        static var ResetLocation: String = "Reset Location"
    }
    
    private var dictionary: NSMutableDictionary
    
    // MARK: Variables
    
    var resetLocation: Location {
        get {
            if let resetLocation: String = dictionary[Keys.ResetLocation] as? String {
                if let location: Location = Location.Cases[resetLocation] {
                    return location
                }
            }
            return .None
        } set {
            dictionary[Keys.ResetLocation] = newValue.stringValue
        }
    }
    
    // MARK: Initialization
    
    init() {
        dictionary = NSMutableDictionary()
    }
    
    init(path: String) {
        if let dictionary = NSMutableDictionary(contentsOfFile: path) {
            self.dictionary = dictionary
        } else {
            self.dictionary = NSMutableDictionary()
        }
    }
    
    // MARK: Methods
    
    func write(path: String) -> Bool {
        
        func write() -> Bool {
            return dictionary.writeToFile(path, atomically: true)
        }
        
        let parentDir = path.stringByDeletingLastPathComponent
        let fileManager = NSFileManager.defaultManager()
        var isDir: ObjCBool = false
        
        if fileManager.fileExistsAtPath(parentDir, isDirectory: &isDir) {
            if isDir {
                return write()
            } else {
                fileManager.removeItemAtPath(parentDir, error: nil)
            }
        }
        
        fileManager.createDirectoryAtPath(
            parentDir,
            withIntermediateDirectories: false,
            attributes: nil,
            error: nil
        )
        
        return write()
    }
    
}
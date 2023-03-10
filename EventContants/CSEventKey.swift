//
//  CSEventKey.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 09/03/2023.
//

import Foundation
public struct CSEventKey
{
    // Event key = eventname+value or just eventname
    public var key : String
    // Test case name
    public var testCaseName : String
    // Used to define if value is required or we can pass it in the key
    public var valueRequired : Bool
    // Used to define if this key to use in this app or not
    public var useful : Bool
    
    /// Init CSEventKey object
    /// - Parameter key:event key
    /// - Parameter testCaseName:test case name
    /// - Parameter valueRequired:used to define if value is required or we can pass it in the key, by default it's false
    /// - Parameter useful:used to define if this key to use in this app or not, by default it's true
    public init(key: String,testCaseName:String, valueRequired: Bool = false,useful:Bool = true) {
        self.key = key
        self.testCaseName = testCaseName
        self.valueRequired = valueRequired
        self.useful = useful
    }
}

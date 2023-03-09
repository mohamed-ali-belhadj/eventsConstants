//
//  CSEventKey.swift
//  EventContants
//
//  Created by MacBook Pro on 09/03/2023.
//

import Foundation
public struct CSEventKey
{
    public var key : String
    public var testCaseName : String
    public var valueRequired : Bool
    public var useful : Bool

    public init(key: String,testCaseName:String, valueRequired: Bool = false,useful:Bool = true) {
        self.key = key
        self.testCaseName = testCaseName
        self.valueRequired = valueRequired
        self.useful = true
    }
}

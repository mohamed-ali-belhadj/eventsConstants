//
//  CSDefaultApplicationConstants.swift
//  EventContants
//
//  Created by MacBook Pro on 09/03/2023.
//

import Foundation
public protocol CSApplicationConstants {
    
    var applicationId: String { get }

    var appLaunchTrue: CSEventKey { get }
    var appLaunchFalse: CSEventKey { get }

    var homeElementsAppearSuccess: CSEventKey { get }
    var homeElementsAppearFail: CSEventKey { get }

    var enterSearchYes: CSEventKey { get }
    var enterSearchNo: CSEventKey { get }

    var searchResultsAppearYes: CSEventKey { get }
    var searchResultsAppearNo: CSEventKey { get }

    var clickOnSearchResultYes: CSEventKey { get }
    var clickOnSearchResultNo: CSEventKey { get }

    var searchDetailsAppear: CSEventKey{ get }
    
    func checkEvent(eventName: String, eventValue: String?,testCaseName:String) -> Bool
    func checkApp(applicationId: String) -> Bool
    func checkIfWeHaveStoreAllEventNeededForAllTestCaseNames(eventNames:[String])-> Bool
}
public class CSDefaultApplicationConstants:CSApplicationConstants,CustomReflectable {
    
    public var applicationId: String = "default_application_name"
    public var appLaunchTrue : CSEventKey  = CSEventKey(key: "appLaunchTrue", testCaseName: "default_testcase_name")
    public var appLaunchFalse : CSEventKey  = CSEventKey(key: "appLaunchFalse", testCaseName: "default_testcase_name")

    public var homeElementsAppearSuccess: CSEventKey  = CSEventKey(key: "homeElementsAppearSuccess", testCaseName: "default_testcase_name")
    public var homeElementsAppearFail: CSEventKey  = CSEventKey(key: "homeElementsAppearFail", testCaseName: "default_testcase_name")

    public var enterSearchYes: CSEventKey  = CSEventKey(key: "enterSearchYes", testCaseName: "default_testcase_name")
    public var enterSearchNo: CSEventKey  = CSEventKey(key: "enterSearchNo", testCaseName: "default_testcase_name")

    public var searchResultsAppearYes: CSEventKey  = CSEventKey(key: "searchResultsAppearYes", testCaseName: "default_testcase_name")
    public var searchResultsAppearNo: CSEventKey  = CSEventKey(key: "searchResultsAppearNo", testCaseName: "default_testcase_name")

    public var clickOnSearchResultYes: CSEventKey  = CSEventKey(key: "clickOnSearchResultYes", testCaseName: "default_testcase_name")
    public var clickOnSearchResultNo: CSEventKey  = CSEventKey(key: "clickOnSearchResultNo", testCaseName: "default_testcase_name")

    public var searchDetailsAppear: CSEventKey  = CSEventKey(key: "searchDetailsAppear", testCaseName: "default_testcase_name",valueRequired: true)
    public var customMirror: Mirror {
            return Mirror(reflecting: self)
        }
    public func checkApp(applicationId: String) -> Bool{
        return self.applicationId == applicationId
    }
    public func checkIfWeHaveStoreAllEventNeededForAllTestCaseNames(eventNames:[String])-> Bool
    {
        let mirror = Mirror(reflecting: self)
        let constants = mirror.children.compactMap { $0.value }
        var weCanSendEvent : Bool = true
        for constant in constants {
            if constant is CSEventKey
            {
                let eventKey = constant as! CSEventKey
                var eventNameFound : Bool = false
                for eventName in eventNames {
                    if eventKey.key == eventName
                    {
                        eventNameFound = true
                    }
                }
                if eventNameFound == false
                {
                    weCanSendEvent = false
                    print("\u{26D4} Error : you have to send event '\(eventKey.key)' for test case name '\(eventKey.testCaseName)' before sending all the vents")
                }
            }
        }
        return weCanSendEvent
    }
    public func checkEvent(eventName: String, eventValue: String?,testCaseName:String) -> Bool{
        let mirror = Mirror(reflecting: self)
        let constants = mirror.children.compactMap { $0.value }
        var eventNameCheckSuccess = false
        var eventValueCheckSuccess = false
        var testCaseNameCheckSuccess = false
        for constant in constants {
            if constant is CSEventKey
            {
                let eventKey = constant as! CSEventKey
                if eventKey.key == eventName
                {
                    if eventKey.useful == true
                    {
                        eventNameCheckSuccess = true
                        if eventKey.testCaseName == testCaseName
                        {
                            testCaseNameCheckSuccess = true
                        }
                        else
                        {
                            print("\u{26D4} Error : the key '\(eventName)' is not related to this test case name '\(testCaseName)'")
                        }
                    }
                    else
                    {
                        print("\u{26D4} Error : the key '\(eventName)' not to be used for this app")
                    }
                    if eventKey.valueRequired
                    {
                        if let evntValue = eventValue,evntValue.isEmpty == false
                        {
                            eventValueCheckSuccess = true
                        }
                        else
                        {
                            print("\u{26D4} Error : Missing value for key '\(eventName)'")
                        }
                    }
                    else
                    {
                        eventValueCheckSuccess = true
                        if eventValue != nil
                        {
                            print("\u{26A0} Warnings : you don't need to add a value for the key '\(eventName)'")
                        }
                    }
                }
            }
        }
        if eventNameCheckSuccess == false
        {
            print("\u{26D4} Error : the key '\(eventName)' is not autorized")
        }
        return eventNameCheckSuccess && eventValueCheckSuccess && testCaseNameCheckSuccess == true
    }
    
}

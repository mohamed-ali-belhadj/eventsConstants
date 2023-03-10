//
//  CSDefaultApplicationConstants.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 09/03/2023.
//

import Foundation
public protocol CSApplicationConstants {
    // list all possible attributs
    // application bundle id or package name
    var applicationId: String { get }
    
    //all the attributes declared at the bottom are the possible attributes that can be added
    var startEventYes: CSEvent { get }
    var endEventYes: CSEvent { get }
    
    var appLaunchTrue: CSEvent { get }
    var appLaunchFalse: CSEvent { get }
    
    var homeElementsAppearSuccess: CSEvent { get }
    var homeElementsAppearFail: CSEvent { get }
    
    var enterSearchYes: CSEvent { get }
    var enterSearchNo: CSEvent { get }
    
    var searchResultsAppearYes: CSEvent { get }
    var searchResultsAppearNo: CSEvent { get }
    
    var clickOnSearchResultYes: CSEvent { get }
    var clickOnSearchResultNo: CSEvent { get }
    
    var searchDetailsAppear: CSEvent{ get }
    /// Check if event name passed is supported by the app, and linked to test case name
    /// - Parameter eventName:event name
    /// - Parameter eventValue:event value (is optionnal)
    /// - Parameter testCaseName:test case name
    /// - Returns  true or false, if we can store this event and send it to the server or not
    func checkEvent(eventName: String, eventValue: String,testCaseName:String) -> Bool
    /// Check if application id is defined in our events constants sdk
    /// - Parameter applicationId:the app bundle id
    /// - Returns  true or false, if this application id is authorized or not
    func checkApp(applicationId: String) -> Bool
    /// Check if we have gone through all the events declared in ou event constants sdk for current app or not before send them to the server
    /// - Parameter eventNames:array contain the events keys stored before send them to the server
    /// - Returns  true or false, if we have gone through all the events defined in events constants sdk for current app
    func checkIfWeHaveStoreAllEventNeededForAllTestCaseNames(eventNames:[String])-> Bool
}
extension CSApplicationConstants {
    //we can define here the default attributes which are not modifiable and that they will be optional attributes for the classes of the constants of the apps like CS5GmarkConstants and CSHotStarConstants
    
    var endEventYes : CSEvent  { return CSEvent(key: "endEvent", value: "Yes", testCaseName: "end") }
    var startEventYes : CSEvent { return CSEvent(key: "startEvent", value: "Yes", testCaseName: "start") }
}

public class CSDefaultApplicationConstants:CSApplicationConstants,CustomReflectable {
    //This class is used to declare attributes with default values and also define methods once and for all for event keys verification methods
    //Each object inherits from this class can inherit all objects and set their exact values for event keys as it can remove event keys if they are already defined as optional in the CSApplicationConstants protocol
    //initialize all attributes, you can set optional attribut not useful by default
    public init() {}
    
    public var applicationId: String = "default_application_name"
    public var endEventYes : CSEvent  = CSEvent(key: "endEvent", value: "Yes", testCaseName: "end")
    public var startEventYes : CSEvent  = CSEvent(key: "startEvent", value: "Yes", testCaseName: "start")
    public var appLaunchTrue : CSEvent  = CSEvent(key: "appLaunch", value: "True",testCaseName: "default_testcase_name")
    public var appLaunchFalse : CSEvent  = CSEvent(key: "appLaunch", value: "False",testCaseName: "default_testcase_name")
    
    public var homeElementsAppearSuccess: CSEvent  = CSEvent(key: "homeElementsAppear", value: "Success",testCaseName: "default_testcase_name")
    public var homeElementsAppearFail: CSEvent  = CSEvent(key: "homeElementsAppear", value: "Fail",testCaseName: "default_testcase_name")
    
    public var enterSearchYes: CSEvent  = CSEvent(key: "enterSearch", value: "Yes",testCaseName: "default_testcase_name")
    public var enterSearchNo: CSEvent  = CSEvent(key: "enterSearch", value: "No",testCaseName: "default_testcase_name")
    
    public var searchResultsAppearYes: CSEvent  = CSEvent(key: "searchResultsAppear", value: "Yes",testCaseName: "default_testcase_name")
    public var searchResultsAppearNo: CSEvent  = CSEvent(key: "searchResultsAppear", value: "No",testCaseName: "default_testcase_name")
    
    public var clickOnSearchResultYes: CSEvent  = CSEvent(key: "clickOnSearchResult", value: "Yes",testCaseName: "default_testcase_name")
    public var clickOnSearchResultNo: CSEvent  = CSEvent(key: "clickOnSearchResult", value: "No",testCaseName: "default_testcase_name")
    
    public var searchDetailsAppear: CSEvent  = CSEvent(key: "searchDetailsAppear", value: "Yes",testCaseName: "default_testcase_name")
    
    //We defined customMirror to properly retrieve the list of attributes / values of attributes passed in the objects which inherit from the default object CSDefaultApplicationConstants
    //The idea for example, when we want to retrieve the list of attributes / values of an instance of the CS5GmarkConstants class, customMirror helps us to retrieve the different attributes / values of this object by a simple loop without retrieving the attribute values by attribute
    public var customMirror: Mirror {
        return Mirror(reflecting: self)
    }
    /// Check if application id is defined in our events constants sdk
    /// - Parameter applicationId:the app bundle id
    /// - Returns  true or false, if this application id is authorized or not
    public func checkApp(applicationId: String) -> Bool{
        return self.applicationId == applicationId
    }
    /// Check if we have gone through all the events declared in ou event constants sdk for current app or not before send them to the server
    /// - Parameter eventNames:array contain the events keys stored before send them to the server
    /// - Returns  true or false, if we have gone through all the events defined in events constants sdk for current app
    public func checkIfWeHaveStoreAllEventNeededForAllTestCaseNames(eventNames:[String])-> Bool
    {
        let mirror = Mirror(reflecting: self)
        let constants = mirror.children.compactMap { $0.value }
        var weCanSendEvent : Bool = true
        for constant in constants {
            if constant is CSEvent
            {
                let eventKey = constant as! CSEvent
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
    /// Check if event name passed is supported by the app, and linked to test case name
    /// - Parameter eventName:event name
    /// - Parameter eventValue:event value (is optionnal)
    /// - Parameter testCaseName:test case name
    /// - Returns  true or false, if we can store this event and send it to the server or not
    public func checkEvent(eventName: String, eventValue: String,testCaseName:String) -> Bool{
        let mirror = Mirror(reflecting: self)
        let constants = mirror.children.compactMap { $0.value }
        var eventNameCheckSuccess = false
        var eventValueCheckSuccess = false
        var testCaseNameCheckSuccess = false
        for constant in constants {
            if constant is CSEvent
            {
                let eventKey = constant as! CSEvent
                if eventKey.key == eventName
                {
                    if eventKey.useful == true
                    {
                        eventNameCheckSuccess = true
                        if eventKey.value == eventValue
                        {
                            eventValueCheckSuccess = true
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
                            print("\u{26D4} Error : the expected value for the key '\(eventName)' is not '\(eventValue)'")
                        }
                    }
                    else
                    {
                        print("\u{26D4} Error : the key '\(eventName)' not to be used for this app")
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

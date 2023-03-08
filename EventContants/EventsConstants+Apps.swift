//
//  EventsConstants+Apps.swift
//  EventContants
//
//  Created by MacBook Pro on 07/03/2023.
//

import Foundation
extension EventConstants
{
    public class CSDefaultApplicationConstants:CSApplicationConstants {
        
        public var applicationId: String = "default_application_name"
        
        public var appLaunchTrue : CSEventKey  = CSEventKey(key: "appLaunchTrue")
        public var appLaunchFalse : CSEventKey  = CSEventKey(key: "appLaunchFalse")

        public var homeElementsAppearSuccess: CSEventKey  = CSEventKey(key: "homeElementsAppearSuccess")
        public var homeElementsAppearFail: CSEventKey  = CSEventKey(key: "homeElementsAppearFail")

        public var enterSearchYes: CSEventKey  = CSEventKey(key: "enterSearchYes")
        public var enterSearchNo: CSEventKey  = CSEventKey(key: "enterSearchNo")

        public var searchResultsAppearYes: CSEventKey  = CSEventKey(key: "searchResultsAppearYes")
        public var searchResultsAppearNo: CSEventKey  = CSEventKey(key: "searchResultsAppearNo")

        public var clickOnSearchResultYes: CSEventKey  = CSEventKey(key: "clickOnSearchResultYes")
        public var clickOnSearchResultNo: CSEventKey  = CSEventKey(key: "clickOnSearchResultNo")

        public var searchDetailsAppear: CSEventKey  = CSEventKey(key: "searchDetailsAppear",valueRequired: true)
        
        public func checkApp(applicationId: String) -> Bool{
            return self.applicationId == applicationId
        }
        public func checkEvent(eventName: String, eventValue: String?) -> Bool{
            let mirror = Mirror(reflecting: CSDefaultApplicationConstants())
            let constants = mirror.children.compactMap { $0.value }
            var eventNameCheckSuccess = false
            var eventValueCheckSuccess = false
            for constant in constants {
                if constant is CSEventKey
                {
                    let eventKey = constant as! CSEventKey
                    if eventKey.key == eventName
                    {
                        if eventKey.useful == true
                        {
                            eventNameCheckSuccess = true
                        }
                        else
                        {
                            print("Error : the key \(eventName) not to be used for this app")
                        }
                        if eventKey.valueRequired
                        {
                            if let evntValue = eventValue,evntValue.isEmpty == false
                            {
                                eventValueCheckSuccess = true
                            }
                            else
                            {
                                print("Error : Missing value for key \(eventName)")
                            }
                        }
                        else
                        {
                            eventValueCheckSuccess = true
                            if eventValue != nil
                            {
                                print("Warnings : you don't need to add a value for the key \(eventName)")
                            }
                        }
                    }
                }
            }
            if eventNameCheckSuccess == false
            {
                print("Error : the key \(eventName) is not autorized")
            }
            return eventNameCheckSuccess && eventValueCheckSuccess == true
        }
        
    }
    public class CS5GmarkConstants:CSDefaultApplicationConstants {
        
        public override var applicationId: String {
            get { return "com.5gmark.mobile" }
            set {}
        }
        public override var appLaunchTrue: CSEventKey {
            get { return CSEventKey(key: "appLaunchTrue") }
            set {}
        }
        public override var appLaunchFalse: CSEventKey {
            get { return CSEventKey(key: "appLaunchFalse") }
            set {}
        }
        public override var homeElementsAppearSuccess: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearSuccess") }
            set {}
        }
        public override var homeElementsAppearFail: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearFail") }
            set {}
        }
        public override var enterSearchYes: CSEventKey {
            get { return CSEventKey(key: "enterSearchYes") }
            set {}
        }
        public override var enterSearchNo: CSEventKey {
            get { return CSEventKey(key: "enterSearchNo") }
            set {}
        }
        public override var searchResultsAppearYes: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearYes") }
            set {}
        }
        public override var searchResultsAppearNo: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearNo") }
            set {}
        }
        public override var clickOnSearchResultYes: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultYes") }
            set {}
        }
        public override var clickOnSearchResultNo: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultNo") }
            set {}
        }
        public override var searchDetailsAppear: CSEventKey {
            get { return CSEventKey(key: "searchDetailsAppear",valueRequired: true) }
            set {}
        }
    }
    public class CSHotStarConstants:CSDefaultApplicationConstants {
        
        public override var applicationId: String {
            get { return "com.hotstar.mobile" }
            set {}
        }
        public override var appLaunchTrue: CSEventKey {
            get { return CSEventKey(key: "appLaunchTrue") }
            set {}
        }
        public override var appLaunchFalse: CSEventKey {
            get { return CSEventKey(key: "appLaunchFalse") }
            set {}
        }
        public override var homeElementsAppearSuccess: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearSuccess") }
            set {}
        }
        public override var homeElementsAppearFail: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearFail") }
            set {}
        }
        public override var enterSearchYes: CSEventKey {
            get { return CSEventKey(key: "enterSearchYes") }
            set {}
        }
        public override var enterSearchNo: CSEventKey {
            get { return CSEventKey(key: "enterSearchNo") }
            set {}
        }
        public override var searchResultsAppearYes: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearYes") }
            set {}
        }
        public override var searchResultsAppearNo: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearNo") }
            set {}
        }
        public override var clickOnSearchResultYes: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultYes") }
            set {}
        }
        public override var clickOnSearchResultNo: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultNo") }
            set {}
        }
        public override var searchDetailsAppear: CSEventKey {
            get { return CSEventKey(key: "searchDetailsAppear",valueRequired: true) }
            set {}
        }
    }
}

//
//  EventsConstants+Apps.swift
//  EventContants
//
//  Created by MacBook Pro on 07/03/2023.
//

import Foundation
extension EventConstants
{
    public class CSHotStarConstants:CSApplicationConstants {
        
        public var applicationId: String = "com.hotstar.mobile"
        
        public var appLaunchTrue : CSEventKey  = CSEventKey(key: "appLaunchTrue")
        public var appLaunchFalse : CSEventKey  = CSEventKey(key: "appLaunchFalse")

        public var homeElementsAppearSuccess: CSEventKey  = CSEventKey(key: "homeElementsAppearSuccess")
        public var homeElementsAppearFail: CSEventKey  = CSEventKey(key: "homeElementsAppearSuccess")

        public var enterSearchYes: CSEventKey  = CSEventKey(key: "enterSearchYes")
        public var enterSearchNo: CSEventKey  = CSEventKey(key: "enterSearchNo")

        public var searchResultsAppearYes: CSEventKey  = CSEventKey(key: "searchResultsAppearYes")
        public var searchResultsAppearNo: CSEventKey  = CSEventKey(key: "searchResultsAppearNo")

        public var clickOnSearchResultYes: CSEventKey  = CSEventKey(key: "clickOnSearchResultYes")
        public var clickOnSearchResultNo: CSEventKey  = CSEventKey(key: "clickOnSearchResultNo")

        public var searchDetailsAppear: CSEventKey  = CSEventKey(key: "searchDetailsAppear",valueRequired: true)
        
    }
    public class CS5GmarkConstants:CSApplicationConstants {
        
        public var applicationId: String = "com.5gmark.mobile"

        public var appLaunchTrue : CSEventKey  = CSEventKey(key: "appLaunchTrue")
        public var appLaunchFalse : CSEventKey  = CSEventKey(key: "appLaunchFalse")

        public var homeElementsAppearSuccess: CSEventKey  = CSEventKey(key: "homeElementsAppearSuccess")
        public var homeElementsAppearFail: CSEventKey  = CSEventKey(key: "homeElementsAppearSuccess")

        public var enterSearchYes: CSEventKey  = CSEventKey(key: "enterSearchYes")
        public var enterSearchNo: CSEventKey  = CSEventKey(key: "enterSearchNo")

        public var searchResultsAppearYes: CSEventKey  = CSEventKey(key: "searchResultsAppearYes")
        public var searchResultsAppearNo: CSEventKey  = CSEventKey(key: "searchResultsAppearNo")

        public var clickOnSearchResultYes: CSEventKey  = CSEventKey(key: "clickOnSearchResultYes",useful: false)
        public var clickOnSearchResultNo: CSEventKey  = CSEventKey(key: "clickOnSearchResultNo",useful: false)

        public var searchDetailsAppear: CSEventKey  = CSEventKey(key: "searchDetailsAppear",valueRequired: true)

    }
}

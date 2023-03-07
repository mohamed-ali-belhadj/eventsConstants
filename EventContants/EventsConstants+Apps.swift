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
        
        public var appLaunch : CSEventKey  = CSEventKey(key: "appLaunch")
        
        public var homeElementsAppear: CSEventKey  = CSEventKey(key: "homeElementsAppear")
        
        public var enterSearch: CSEventKey  = CSEventKey(key: "enterSearch")
        
        public var searchResultsAppear: CSEventKey  = CSEventKey(key: "searchResultsAppear")
        
        public var clickOnSearchResult: CSEventKey  = CSEventKey(key: "clickOnSearchResult")
        
        public var searchDetailsAppear: CSEventKey  = CSEventKey(key: "searchDetailsAppear",valueRequired: true)
        
    }
    public class CS5GmarkConstants:CSApplicationConstants {
        
        public var applicationId: String = "com.5gmark.mobile"

        public var appLaunch : CSEventKey  = CSEventKey(key: "appLaunch")
        
        public var homeElementsAppear: CSEventKey  = CSEventKey(key: "homeElementsAppear")
        
        public var enterSearch: CSEventKey  = CSEventKey(key: "enterSearch")
        
        public var searchResultsAppear: CSEventKey  = CSEventKey(key: "searchResultsAppear")
        
        public var clickOnSearchResult: CSEventKey  = CSEventKey(key: "clickOnSearchResult")
        
        public var searchDetailsAppear: CSEventKey  = CSEventKey(key: "searchDetailsAppear",valueRequired: true)
        
    }
}

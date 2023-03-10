//
//  EventsConstants+Apps.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import Foundation
//for each app you must define the keys to use and remove keys not to use (this key must be declared as optional in the CSApplicationConstants protocol)
    public class CS5GmarkConstants:CSDefaultApplicationConstants {
        //for each app you must define the keys to use and remove keys not to use (this key must be declared as optional in the CSApplicationConstants protocol)
        public override var applicationId: String {
            get { return "com.5gmark.mobile" }
            set {}
        }
        // I can remove appLaunchTrue because it's optionnal attribut
        public override var appLaunchTrue: CSEventKey {
            get { return CSEventKey(key: "appLaunchTrue", testCaseName: "AppLaunch") }
            set {}
        }
        public override var appLaunchFalse: CSEventKey {
            get { return CSEventKey(key: "appLaunchFalse", testCaseName: "AppLaunch") }
            set {}
        }
        public override var homeElementsAppearSuccess: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearSuccess", testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var homeElementsAppearFail: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearFail", testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var enterSearchYes: CSEventKey {
            get { return CSEventKey(key: "enterSearchYes", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var enterSearchNo: CSEventKey {
            get { return CSEventKey(key: "enterSearchNo", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearYes: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearYes", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearNo: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearNo", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultYes: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultYes", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultNo: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultNo", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchDetailsAppear: CSEventKey {
            get { return CSEventKey(key: "searchDetailsAppear", testCaseName: "TimeToLoadDetailsPage",valueRequired: true) }
            set {}
        }
        public override var customMirror: Mirror {
            // add all keys to capt (required+optional or default keys)
            return Mirror(self,
                              children: ["applicationId": applicationId,"endEventYes":endEventYes,"startEventYes":startEventYes,"appLaunchTrue":appLaunchTrue,"appLaunchFalse":appLaunchFalse,"homeElementsAppearSuccess":homeElementsAppearSuccess,"homeElementsAppearFail":homeElementsAppearFail,"enterSearchYes":enterSearchYes,"enterSearchNo":enterSearchNo,"searchResultsAppearYes":searchResultsAppearYes,"searchResultsAppearNo":searchResultsAppearNo,"clickOnSearchResultYes":clickOnSearchResultYes,"clickOnSearchResultNo":clickOnSearchResultNo,"searchDetailsAppear":searchDetailsAppear],
                              displayStyle: .struct)
            }
    }
    public class CSHotStarConstants:CSDefaultApplicationConstants {
        //for each app you must define the keys to use and remove keys not to use (this key must be declared as optional in the CSApplicationConstants protocol)
        public override var applicationId: String {
            get { return "com.hotstar.mobile" }
            set {}
        }
        // I can remove appLaunchTrue because it's optionnal attribut
        public override var appLaunchTrue: CSEventKey {
            get { return CSEventKey(key: "appLaunchTrue", testCaseName: "AppLaunch") }
            set {}
        }
        public override var appLaunchFalse: CSEventKey {
            get { return CSEventKey(key: "appLaunchFalse", testCaseName: "AppLaunch") }
            set {}
        }
        public override var homeElementsAppearSuccess: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearSuccess", testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var homeElementsAppearFail: CSEventKey {
            get { return CSEventKey(key: "homeElementsAppearFail", testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var enterSearchYes: CSEventKey {
            get { return CSEventKey(key: "enterSearchYes", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var enterSearchNo: CSEventKey {
            get { return CSEventKey(key: "enterSearchNo", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearYes: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearYes", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearNo: CSEventKey {
            get { return CSEventKey(key: "searchResultsAppearNo", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultYes: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultYes", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultNo: CSEventKey {
            get { return CSEventKey(key: "clickOnSearchResultNo", testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchDetailsAppear: CSEventKey {
            get { return CSEventKey(key: "searchDetailsAppear", testCaseName: "TimeToLoadDetailsPage",valueRequired: true) }
            set {}
        }
        // add all keys to capt (required+optional or default keys)
        public override var customMirror: Mirror {
                return Mirror(self,
                              children: ["applicationId": applicationId,"endEventYes":endEventYes,"startEventYes":startEventYes,"appLaunchTrue":appLaunchTrue,"appLaunchFalse":appLaunchFalse,"homeElementsAppearSuccess":homeElementsAppearSuccess,"homeElementsAppearFail":homeElementsAppearFail,"enterSearchYes":enterSearchYes,"enterSearchNo":enterSearchNo,"searchResultsAppearYes":searchResultsAppearYes,"searchResultsAppearNo":searchResultsAppearNo,"clickOnSearchResultYes":clickOnSearchResultYes,"clickOnSearchResultNo":clickOnSearchResultNo,"searchDetailsAppear":searchDetailsAppear],
                              displayStyle: .struct)
            }
    }

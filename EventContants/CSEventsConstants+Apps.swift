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
        public override init() {super.init()}
        public override var applicationId: String {
            get { return "com.5gmark.mobile" }
            set {}
        }
        // I can remove appLaunchTrue because it's optionnal attribut
        public override var appLaunchTrue: CSEvent {
            get { return CSEvent(key: "appLaunch", value: "True",testCaseName: "AppLaunch") }
            set {}
        }
        public override var appLaunchFalse: CSEvent {
            get { return CSEvent(key: "appLaunch", value: "false",testCaseName: "AppLaunch") }
            set {}
        }
        public override var homeElementsAppearSuccess: CSEvent {
            get { return CSEvent(key: "homeElementsAppear", value: "Success",testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var homeElementsAppearFail: CSEvent {
            get { return CSEvent(key: "homeElementsAppear", value: "Fail",testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var enterSearchYes: CSEvent {
            get { return CSEvent(key: "enterSearch", value: "Yes",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var enterSearchNo: CSEvent {
            get { return CSEvent(key: "enterSearch", value: "No",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearYes: CSEvent {
            get { return CSEvent(key: "searchResultsAppear", value: "Yes",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearNo: CSEvent {
            get { return CSEvent(key: "searchResultsAppear", value: "No",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultYes: CSEvent {
            get { return CSEvent(key: "clickOnSearchResult", value: "Yes",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultNo: CSEvent {
            get { return CSEvent(key: "clickOnSearchResult", value: "No",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchDetailsAppear: CSEvent {
            get { return CSEvent(key: "searchDetailsAppear", value: "Yes",testCaseName: "TimeToLoadDetailsPage") }
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
        public override init() {super.init()}

        public override var applicationId: String {
            get { return "com.hotstar.mobile" }
            set {}
        }
        // I can remove appLaunchTrue because it's optionnal attribut
        public override var appLaunchTrue: CSEvent {
            get { return CSEvent(key: "appLaunch", value: "True",testCaseName: "AppLaunch") }
            set {}
        }
        public override var appLaunchFalse: CSEvent {
            get { return CSEvent(key: "appLaunch", value: "false",testCaseName: "AppLaunch") }
            set {}
        }
        public override var homeElementsAppearSuccess: CSEvent {
            get { return CSEvent(key: "homeElementsAppear", value: "Success",testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var homeElementsAppearFail: CSEvent {
            get { return CSEvent(key: "homeElementsAppear", value: "Fail",testCaseName: "TimeToLoadHomePage") }
            set {}
        }
        public override var enterSearchYes: CSEvent {
            get { return CSEvent(key: "enterSearch", value: "Yes",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var enterSearchNo: CSEvent {
            get { return CSEvent(key: "enterSearch", value: "No",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearYes: CSEvent {
            get { return CSEvent(key: "searchResultsAppear", value: "Yes",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchResultsAppearNo: CSEvent {
            get { return CSEvent(key: "searchResultsAppear", value: "No",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultYes: CSEvent {
            get { return CSEvent(key: "clickOnSearchResult", value: "Yes",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var clickOnSearchResultNo: CSEvent {
            get { return CSEvent(key: "clickOnSearchResult", value: "No",testCaseName: "SearchResultTime") }
            set {}
        }
        public override var searchDetailsAppear: CSEvent {
            get { return CSEvent(key: "searchDetailsAppear", value: "Yes",testCaseName: "TimeToLoadDetailsPage") }
            set {}
        }
        // add all keys to capt (required+optional or default keys)
        public override var customMirror: Mirror {
                return Mirror(self,
                              children: ["applicationId": applicationId,"endEventYes":endEventYes,"startEventYes":startEventYes,"appLaunchTrue":appLaunchTrue,"appLaunchFalse":appLaunchFalse,"homeElementsAppearSuccess":homeElementsAppearSuccess,"homeElementsAppearFail":homeElementsAppearFail,"enterSearchYes":enterSearchYes,"enterSearchNo":enterSearchNo,"searchResultsAppearYes":searchResultsAppearYes,"searchResultsAppearNo":searchResultsAppearNo,"clickOnSearchResultYes":clickOnSearchResultYes,"clickOnSearchResultNo":clickOnSearchResultNo,"searchDetailsAppear":searchDetailsAppear],
                              displayStyle: .struct)
            }
    }

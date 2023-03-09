//
//  EventContantsTests.swift
//  EventContantsTests
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import XCTest
@testable import EventContants

final class EventConstantsTests: XCTestCase {

    static let eventConstants = EventConstants(appCoordinates: CSApplicationCoordinates(eventURL: "https://development-api.mozark.ai", applicationName: "hotStar", applicationId: "com.hotstar.mobile", applicationVersion: "1.0"))
    override func setUp() {
        continueAfterFailure = false
    }
    func testGetEquivalentConstants() {
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.applicationId == "com.hotstar.mobile","applicationId does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.appLaunchTrue.key == "appLaunchTrue","appLaunch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.homeElementsAppearSuccess.key == "homeElementsAppearSuccess","homeElementsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.enterSearchYes.key == "enterSearchYes","enterSearch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchResultsAppearYes.key == "searchResultsAppearYes","searchResultsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.clickOnSearchResultYes.key == "clickOnSearchResultYes","clickOnSearchResult does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.key == "searchDetailsAppear","searchDetailsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.valueRequired == true,"searchDetailsAppear value is required")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkEvent(eventName: "appLaunchTrue", eventValue: nil, testCaseName: "AppLaunch") == true,"checkEvent do not pass ")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkIfWeHaveStoreAllEventNeededForAllTestCaseNames(eventNames: ["appLaunchTrue","appLaunchFalse","homeElementsAppearSuccess","homeElementsAppearFail","enterSearchYes","enterSearchNo","searchResultsAppearYes","searchResultsAppearNo","clickOnSearchResultYes","clickOnSearchResultNo","searchDetailsAppear"]) == true,"there are missing events")

    }
    override class func tearDown() {
        print("Called after all Tests")
    }

}

//
//  EventContantsTests.swift
//  EventContantsTests
//
//  Created by MacBook Pro on 07/03/2023.
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
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.appLaunch.key == "appLaunch","appLaunch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.homeElementsAppear.key == "homeElementsAppear","homeElementsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.enterSearch.key == "enterSearch","enterSearch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchResultsAppear.key == "searchResultsAppear","searchResultsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.clickOnSearchResult.key == "clickOnSearchResult","clickOnSearchResult does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.key == "searchDetailsAppear","searchDetailsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.valueRequired == true,"searchDetailsAppear value is required")
    }
    override class func tearDown() {
        print("Called after all Tests")
    }

}

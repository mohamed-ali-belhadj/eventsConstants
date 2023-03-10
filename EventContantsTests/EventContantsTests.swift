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
    override class func tearDown() {
        print("Called after all Tests")
    }
    func testInitEventConstants()
    {
        XCTAssertNotNil(EventConstantsTests.eventConstants.appConstants,"the appConstants object must be non-null")
        XCTAssertNotNil(EventConstantsTests.eventConstants.appCoordinates,"the appCoordinates object must be non-null")
        XCTAssert(EventConstantsTests.eventConstants.appConstants is CSHotStarConstants,"with an appid \"com.hotstar.mobile\", you must have an app constant object of type CSHotStarConstants")
    }
    func testInitApplicationCoordinates()
    {
        XCTAssert(EventConstantsTests.eventConstants.appCoordinates?.applicationId == "com.hotstar.mobile","applicationId does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appCoordinates?.eventURL == "https://development-api.mozark.ai","applicationId does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appCoordinates?.applicationName == "hotStar","applicationId does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appCoordinates?.applicationVersion == "1.0","applicationId does not valid")
    }
    func testInitEventKey()
    {
        
        let eventKey : CSEvent = CSEvent(key: "appLaunch", value: "True",testCaseName: "appLaunch")
        XCTAssert(eventKey.key == "appLaunch","the key must equal to \"appLaunchTrue\"")
        XCTAssert(eventKey.testCaseName == "appLaunch","the testCaseName must equal to \"appLaunch\"")
        XCTAssert(eventKey.value == "True","the valueRequired attribute must equal to \"true\"")
        XCTAssert(eventKey.useful == true,"the useful attribute must equal to \"true\"")
    }
    func testInitDefaultApplicationConstants()
    {
        let defaultConstant : CSDefaultApplicationConstants = CSDefaultApplicationConstants()
        XCTAssert(defaultConstant.applicationId == "default_application_name","applicationId does not valid")
        //test Optional attributs
        XCTAssert(defaultConstant.endEventYes.key == "endEvent","key does not valid")
        XCTAssert(defaultConstant.endEventYes.testCaseName == "end","testCaseName does not valid")
        XCTAssert(defaultConstant.endEventYes.value == "Yes","value does not valid")
        XCTAssert(defaultConstant.endEventYes.useful == true,"useful does not valid")
        //test required attributs
        XCTAssert(defaultConstant.searchDetailsAppear.key == "searchDetailsAppear","key does not valid")
        XCTAssert(defaultConstant.searchDetailsAppear.testCaseName == "default_testcase_name","testCaseName does not valid")
        XCTAssert(defaultConstant.searchDetailsAppear.value == "Yes","value does not valid")
        XCTAssert(defaultConstant.searchDetailsAppear.useful == true,"useful does not valid")
    }
    func testCheckConstantsForHotStarApp() {
        
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.endEventYes.key == "endEvent","endEvent key is not supported by this app")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.endEventYes.value == "Yes","endEvent value is bot valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.endEventYes.testCaseName == "end","test case name does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.applicationId == "com.hotstar.mobile","applicationId does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.appLaunchTrue.key == "appLaunch","appLaunch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.homeElementsAppearSuccess.key == "homeElementsAppear","homeElementsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.enterSearchYes.key == "enterSearch","enterSearch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchResultsAppearYes.key == "searchResultsAppear","searchResultsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.clickOnSearchResultYes.key == "clickOnSearchResult","clickOnSearchResult does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.key == "searchDetailsAppear","searchDetailsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.value == "Yes","searchDetailsAppear value is not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkEvent(eventName: "appLaunch", eventValue: "True", testCaseName: "AppLaunch") == true,"checkEvent do not pass ")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkEvent(eventName: "endEvent", eventValue: "Yes", testCaseName: "end") == true,"checkEvent do not pass ")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkIfWeHaveStoreAllEventNeededForAllTestCaseNames(eventNames: ["appLaunch","endEvent","startEvent","appLaunch","homeElementsAppear","homeElementsAppear","enterSearch","enterSearch","searchResultsAppear","searchResultsAppear","clickOnSearchResult","clickOnSearchResult","searchDetailsAppear"]) == true,"there are missing events")
    }
    
}

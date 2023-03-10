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
        let eventKey : CSEventKey = CSEventKey(key: "appLaunchTrue", testCaseName: "appLaunch",valueRequired: true, useful: false)
        XCTAssert(eventKey.key == "appLaunchTrue","the key must equal to \"appLaunchTrue\"")
        XCTAssert(eventKey.testCaseName == "appLaunch","the testCaseName must equal to \"appLaunch\"")
        XCTAssert(eventKey.valueRequired == true,"the valueRequired attribute must equal to \"true\"")
        XCTAssert(eventKey.useful == false,"the useful attribute must equal to \"true\"")
    }
    func testInitDefaultApplicationConstants()
    {
        let defaultConstant : CSDefaultApplicationConstants = CSDefaultApplicationConstants()
        XCTAssert(defaultConstant.applicationId == "default_application_name","applicationId does not valid")
        //test Optional attributs
        XCTAssert(defaultConstant.endEventYes.key == "endEventYes","key does not valid")
        XCTAssert(defaultConstant.endEventYes.testCaseName == "end","testCaseName does not valid")
        XCTAssert(defaultConstant.endEventYes.valueRequired == false,"valueRequired does not valid")
        XCTAssert(defaultConstant.endEventYes.useful == true,"useful does not valid")
        //test required attributs
        XCTAssert(defaultConstant.searchDetailsAppear.key == "searchDetailsAppear","key does not valid")
        XCTAssert(defaultConstant.searchDetailsAppear.testCaseName == "default_testcase_name","testCaseName does not valid")
        XCTAssert(defaultConstant.searchDetailsAppear.valueRequired == true,"valueRequired does not valid")
        XCTAssert(defaultConstant.searchDetailsAppear.useful == true,"useful does not valid")
    }
    func testCheckConstantsForHotStarApp() {
        
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.endEventYes.key == "endEventYes","endEventYes key is ont supported by this app")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.endEventYes.testCaseName == "end","test case name does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.applicationId == "com.hotstar.mobile","applicationId does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.appLaunchTrue.key == "appLaunchTrue","appLaunch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.homeElementsAppearSuccess.key == "homeElementsAppearSuccess","homeElementsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.enterSearchYes.key == "enterSearchYes","enterSearch does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchResultsAppearYes.key == "searchResultsAppearYes","searchResultsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.clickOnSearchResultYes.key == "clickOnSearchResultYes","clickOnSearchResult does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.key == "searchDetailsAppear","searchDetailsAppear does not valid")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.searchDetailsAppear.valueRequired == true,"searchDetailsAppear value is required")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkEvent(eventName: "appLaunchTrue", eventValue: nil, testCaseName: "AppLaunch") == true,"checkEvent do not pass ")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkEvent(eventName: "endEventYes", eventValue: nil, testCaseName: "end") == true,"checkEvent do not pass ")
        XCTAssert(EventConstantsTests.eventConstants.appConstants?.checkIfWeHaveStoreAllEventNeededForAllTestCaseNames(eventNames: ["appLaunchTrue","endEventYes","startEventYes","appLaunchFalse","homeElementsAppearSuccess","homeElementsAppearFail","enterSearchYes","enterSearchNo","searchResultsAppearYes","searchResultsAppearNo","clickOnSearchResultYes","clickOnSearchResultNo","searchDetailsAppear"]) == true,"there are missing events")
    }
    
}

//
//  EventContantsTests.swift
//  EventContantsTests
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import XCTest
@testable import EventContants

final class EventConstantsTests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
    }
    override class func tearDown() {
        print("Called after all Tests")
    }
    func testConstants()
    {
        print(EventConstants().startEventTrue)
        print(JouneyConstant().start)

    }
}

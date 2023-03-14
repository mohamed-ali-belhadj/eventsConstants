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
        HotstarConstants().checkEvent(eventName: "transactionInitiatedTrue")
        print(HotstarConstants().moneyTransfer.journeyName)
        print(HotstarConstants().purchaseItem.addToBasketTrue)

    }
}

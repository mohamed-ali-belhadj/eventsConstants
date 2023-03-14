//
//  EventsConstants+Hottar.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import Foundation

// MARK: - HotstarConstants

public class HotstarConstants : EventConstants {
    public override var allEvents: [String]{
        get {  return [
            "transactionInitiatedTrue",
            "transactionInitiatedFalse",
            "transactionAmount",
            "addToBasketTrue",
            "addToBasketFalse",
            "numberOfProductInBasket"
        ]}
        set{}
    }
    public var moneyTransfer : MoneyTransfer = MoneyTransfer()
    public var purchaseItem : PurchaseItem = PurchaseItem()

    // MARK: - MoneyTransfer
    public class MoneyTransfer: Journey {
        public override var journeyName: String {
            get {return "MoneyTransfer"}
            set {}
        }
        public let transactionInitiatedTrue: String = "transactionInitiatedTrue"
        public let transactionInitiatedFalse: String = "transactionInitiatedFalse"
        public let transactionAmount: String = "transactionAmount"
    }
    // MARK: - PurchaseItem
    public class PurchaseItem : Journey{
        public override var journeyName: String {
            get {return "PurchaseItem"}
            set {}
        }
        public let addToBasketTrue: String = "addToBasketTrue"
        public let addToBasketFalse: String = "addToBasketFalse"
        public let numberOfProductInBasket: String = "numberOfProductInBasket"
    }
    
}

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
        override var journeyName: String {
            get {return "MoneyTransfer"}
            set {}
        }
         let transactionInitiatedTrue: String = "transactionInitiatedTrue"
         let transactionInitiatedFalse: String = "transactionInitiatedFalse"
         let transactionAmount: String = "transactionAmount"
    }
    // MARK: - PurchaseItem
    public class PurchaseItem : Journey{
        override var journeyName: String {
            get {return "PurchaseItem"}
            set {}
        }
         let addToBasketTrue: String = "addToBasketTrue"
         let addToBasketFalse: String = "addToBasketFalse"
         let numberOfProductInBasket: String = "numberOfProductInBasket"
    }
    
}

//
//  CSEventConstants.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import Foundation
public class EventConstants {
    public var allEvents : [String] { return [String]()}
    public struct start { // start journey
        static let startEventTrue: String = "startEventTrue"
    }
    public struct end { // end journey
        static let endEventTrue: String = "endEventTrue"
    }
    public func checkEvent(eventName: String) -> Bool
    {
        let eventNameCheckSuccess =  self.allEvents.contains(eventName)
        if eventNameCheckSuccess == false
        {
            print("\u{26D4} Error : the key '\(eventName)' is not autorized")
        }
        return eventNameCheckSuccess
    }
    
}
public class Journey
{
    var journeyName : String = ""
}

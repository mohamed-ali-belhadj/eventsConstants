//
//  CSEventConstants.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import Foundation
public class EventConstants {
    init() {
    }
    public var start : start = start()
    public var end : end = end()

    public var allEvents : [String] { return [String]()}
    public class start: Journey
    { // start journey
        public override var journeyName: String {
            get {return "start"}
            set {}
        }
        public let startEventTrue: String = "startEventTrue"
    }
    public class end: Journey
    { // start journey
        public override var journeyName: String {
            get {return "end"}
            set {}
        }
        public let endEventTrue: String = "endEventTrue"
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

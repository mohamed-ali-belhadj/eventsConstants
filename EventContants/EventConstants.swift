//
//  EventConstants.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import Foundation
public protocol CSApplicationConstants {
    
    var applicationId: String { get }

    var appLaunch: CSEventKey { get }
    
    var homeElementsAppear: CSEventKey { get }
    
    var enterSearch: CSEventKey { get }
    
    var searchResultsAppear: CSEventKey { get }
    
    var clickOnSearchResult: CSEventKey { get }
    
    var searchDetailsAppear: CSEventKey{ get }
    
}
public class EventConstants:NSObject{
    
    public var appCoordinates : CSApplicationCoordinates?
    public var appConstants : CSApplicationConstants?

    public init(appCoordinates : CSApplicationCoordinates)
    {
        super.init()
        self.appCoordinates = appCoordinates
        self.appConstants = self.getEquivalentConstants()
    }
    private func getEquivalentConstants()->CSApplicationConstants?
    {
        switch self.appCoordinates?.applicationId {
        case "com.5gmark.mobile":
            return CS5GmarkConstants()
        case "com.hotstar.mobile":
            return CSHotStarConstants()
        default:
            return nil
        }
    }
}

public struct CSApplicationCoordinates{
    /// The app name
    public var applicationName: String = ""
    /// The app bundle id
    public var applicationId: String = ""
    /// The app version
    public var applicationVersion: String = ""
    /// The base url to use to synchronize the logs
    public var eventURL: String = ""
    
    public init(eventURL: String?, applicationName: String?, applicationId: String?,applicationVersion: String?) {
        /// Init Event attributs
        self.applicationName = applicationName ?? "default_application_name"
        self.applicationId = applicationId ?? "default_application_package_name"
        self.applicationVersion = applicationVersion ?? "default_application_package_version"
        self.eventURL = eventURL ?? "default_event_url"
    }
}
public struct CSEventKey
{
    internal var key : String
    internal var valueRequired : Bool
    
    public init(key: String, valueRequired: Bool = false) {
        self.key = key
        self.valueRequired = valueRequired
    }
}

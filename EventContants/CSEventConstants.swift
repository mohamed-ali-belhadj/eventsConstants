//
//  CSEventConstants.swift
//  EventContants
//
//  Created by Mohamed Ali BELHADJ on 07/03/2023.
//

import Foundation

public class EventConstants:NSObject{
    // Contain app coordinates like app id, app name ...
    public var appCoordinates : CSApplicationCoordinates?
    // Contain all the constants that they can be used by apps
    public var appConstants : CSApplicationConstants?
    /// Init EventConstants object and get equivalent constants for app
    /// - Parameter appCoordinates:contain app coordinates like app id, app name ...
    public init(appCoordinates : CSApplicationCoordinates)
    {
        super.init()
        self.appCoordinates = appCoordinates
        self.appConstants = self.getEquivalentConstants()
    }
    /// Get equivalent constants for app based on its coordinates
    /// - Returns the constants  equivalent to this app
    private func getEquivalentConstants()->CSApplicationConstants?
    {
        switch self.appCoordinates?.applicationId {
        case "com.5gmark.mobile":
            return CS5GmarkConstants()
        case "com.hotstar.mobile":
            return CSHotStarConstants()
        case "default_application_name":
            return CSDefaultApplicationConstants()
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
    /// Init CSApplicationCoordinates object
    /// - Parameter eventURL:The base url to use to synchronize the events
    /// - Parameter applicationName:the app name
    /// - Parameter applicationId:the app bundle id
    /// - Parameter applicationVersion:the app version
    public init(eventURL: String?, applicationName: String?, applicationId: String?,applicationVersion: String?) {
        /// Init Event attributs
        self.applicationName = applicationName ?? "default_application_name"
        self.applicationId = applicationId ?? "default_application_package_name"
        self.applicationVersion = applicationVersion ?? "default_application_package_version"
        self.eventURL = eventURL ?? "default_event_url"
    }
}

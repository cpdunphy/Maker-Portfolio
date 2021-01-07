//
//  WildcatsApp.swift
//  Shared
//
//  Created by Collin Dunphy on 7/24/20.
//

import SwiftUI
import URLImage

@main
struct WildcatsApp: App {
    #if os(iOS)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    #else
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    #endif
    
    /// Inital declaration and initiation of 'AuthStore'
    @StateObject var authStore : AuthStore = AuthStore()
    
    /// Inital declaration and initiation of 'CalendarStore'
    @StateObject var calendarStore : CalendarStore = CalendarStore()
    
    /// Inital declaration and initiation of 'ClassStore'
    @StateObject var classStore : ClassStore = ClassStore()
    
    /// Inital declaration and initiation of 'LocationStore'
    @StateObject var locationStore : LocationStore = LocationStore()
    
    /// Inital declaration and initiation of 'ResourcesStore'
    @StateObject var resourceStore : ResourcesStore = ResourcesStore()
    
    /// Inital declaration and initiation of 'SchoolStore'
    @StateObject var schoolStore : SchoolStore = SchoolStore()
    
    /// Inital declaration and initiation of 'TimerSession'
    @StateObject var timerSession : TimerSession = TimerSession()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authStore)
                .environmentObject(calendarStore)
                .environmentObject(classStore)
                .environmentObject(locationStore)
                .environmentObject(resourceStore)
                .environmentObject(schoolStore)
                .environmentObject(timerSession)
                .onAppear {
                    URLImageService.shared.defaultOptions.expiryInterval = 172_800.0
                    URLImageService.shared.defaultOptions.cachePolicy = .returnCacheElseLoad(cacheDelay: 172_800.0, downloadDelay: nil)
                }
        }
    }
}

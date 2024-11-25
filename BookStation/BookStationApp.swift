//
//  BookStationApp.swift
//  BookStation
//
//  Created by TECNOSYSTEM2000 on 22/11/24.
//

import SwiftUI
import FirebaseCore
//
@main
struct BookStationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
    
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()

    return true
  }
}

//
//  SpotterApp.swift
//  Spotter
//
//  Created by Freddy Trae Torres on 6/12/23.
//

import SwiftUI
import Firebase

@main
struct SpotterApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    print("configured Firebase")

    return true
  }
}

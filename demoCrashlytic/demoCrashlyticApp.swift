//
//  demoCrashlyticApp.swift
//  demoCrashlytic
//
//  Created by Chaiyasit Tayabovorn on 5/3/2565 BE.
//

import SwiftUI
import Firebase


class AppDelegate : NSObject, UIApplicationDelegate{
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    print("This method will be called before every pages")
    FirebaseApp.configure()
    return true
  }
}

@main
struct demoCrashlyticApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

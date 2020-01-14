
//  AppDelegate.swift
//  AlamofireTest
//
//  Created by Quang on 1/10/20.
//  Copyright © 2020 Quang. All rights reserved.

import UIKit

@UIApplicationMain
@available(iOS 13.0, *)
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 13.0, *){
            
        }else{
            window = UIWindow(frame: UIScreen.main.bounds)
            let token = UserDefaults.standard.string(forKey: "token") ?? ""
            if token.isEmpty {
                startLogin()
            }else{
                startMain()
            }
        }
        return true
    }

    func startLogin(){
        let mainVC = LoginVCViewController()
        
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
    }
    
    func startMain(){
        let mainVC = MainVCViewController()
        let navigation = UINavigationController(rootViewController: mainVC)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
    }
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


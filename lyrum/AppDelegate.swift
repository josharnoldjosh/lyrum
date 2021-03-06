//
//  AppDelegate.swift
//  lyrum
//
//  Created by Josh Arnold on 9/18/20.
//

import UIKit
import Parse
import SnapKit
import Closures
import SpringButton
import SVProgressHUD


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = {
        return UIApplication.shared.windows.first
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        SVProgressHUD.setRingThickness(3.5)
                        
        let parseConfig = ParseClientConfiguration {
            $0.applicationId = "lyrum"
            $0.clientKey = "lyrum"
            $0.server = "https://lyrum-music-app.herokuapp.com/parse"
        }
        
        Parse.initialize(with: parseConfig)
        
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = .white
        navigationBarAppearace.barTintColor = .white
        navigationBarAppearace.isTranslucent = false
        navigationBarAppearace.isOpaque = true
        
        if #available(iOS 13.0, *) {
            window = UIWindow.init(frame: UIScreen.main.bounds)
        }
        
//        let query = PFQuery(className: "Post")
//        query.findObjectsInBackground { (obj, error) in
//            if error == nil {
//                PFObject.deleteAll(inBackground: obj! as! [PFObject]) { (succeeded, error) in
//                    if (succeeded) {
//                        // The array of objects was successfully deleted.
//                    } else {
//                        // There was an error. Check the errors localizedDescription.
//                    }
//                }
//
//            }
//        }
        
        return true
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


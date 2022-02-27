import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var rootCoordinator: RootCoordinator?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    rootCoordinator = RootCoordinator()
    
    window = UIWindow()
    window?.rootViewController = rootCoordinator
    window?.makeKeyAndVisible()
    
    return true
  }
}

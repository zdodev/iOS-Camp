import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowsScene = (scene as? UIWindowScene) else {
            return
        }
        
        let weatherViewController = WeatherViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = weatherViewController
        window?.makeKeyAndVisible()
        window?.windowScene = windowsScene
    }
}


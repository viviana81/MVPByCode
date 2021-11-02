//
//  SceneDelegate.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 26/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var viewPresenter: ViewPresenter?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
       
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene

        let pre = ViewPresenter()
        
        let main = MainViewController(presenter: pre)
        self.viewPresenter = pre
        let navigation = UINavigationController(rootViewController: main)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
    }
}


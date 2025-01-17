//
//  ApPDependencyContainer.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation
import UIKit
import FeatureModule1UI
import FeatureModule2UI
import Feature1Implementations
import Feature2Implementations

final class AppDependencyContainer {

    let feature1ViewController: UIViewController
    let feature2ViewController: UIViewController

    init() {

        func makeFeature1ViewController() -> UIViewController {
            let feature1Service = Feature1ServiceImplementation()
            let feature1DependencyContainer = Feature1DependencyContainer(service: feature1Service)
            return feature1DependencyContainer.makeFeature1ViewController()
        }

        func makeFeature2ViewController() -> UIViewController {
            let feature2Service = Feature2ServiceImplementation()
            let feature2DependencyContainer = Feature2DependencyContainer(service: feature2Service)
            return feature2DependencyContainer.makeFeature2ViewController()
        }

        feature1ViewController = makeFeature1ViewController()
        feature2ViewController = makeFeature2ViewController()
    }

    func makeMainViewController() -> UITabBarController {
        let tabViewController = UITabBarController()

        feature1ViewController.tabBarItem = UITabBarItem(title: "feature1",
                                                         image: nil, selectedImage: nil)

        feature2ViewController.tabBarItem = UITabBarItem(title: "feature2",
                                                         image: nil, selectedImage: nil)

        tabViewController.tabBar.isTranslucent = false
        tabViewController.tabBar.backgroundColor = .white

        tabViewController.viewControllers = [feature1ViewController,
                                             feature2ViewController]
        return tabViewController
    }
}

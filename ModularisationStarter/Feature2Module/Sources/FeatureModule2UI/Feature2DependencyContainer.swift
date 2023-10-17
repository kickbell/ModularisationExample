//
//  Feature2DependencyContainer.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation
import UIKit
import Feature2
import Feature2Presentation
import Feature2Implementations


public final class Feature2DependencyContainer {

    private let feature2ViewModel: Feature2ViewModel

    public init(service: Feature2Service) {
        func makeFeature2ViewModel() -> Feature2ViewModel {
            return Feature2ViewModel(service: service)
        }

        feature2ViewModel = makeFeature2ViewModel()
    }

    public func makeFeature2ViewController() -> UIViewController {
        let feature2ViewController = Feature2ViewController(viewModel: feature2ViewModel)
        return feature2ViewController
    }
}

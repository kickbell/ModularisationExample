//
//  Feature2ServiceImplementation.swift
//  ModularisationVertical
//
//  Created by Sashen Singh on 2022/10/04.
//

import Foundation
import Feature2

public final class Feature2ServiceImplementation: Feature2Service {
    public init() {}

    public func fetchData(completion: @escaping (Feature2Model) -> ()) {
        let serviceModel = Feature2ServiceModel(data: "Feature2Data")
        let mappedFeatureModel = Feature2Model(feature2ServiceModel: serviceModel)

        completion(mappedFeatureModel)
    }
}

private extension Feature2Model {
    init(feature2ServiceModel: Feature2ServiceModel) {
        self.init(data: feature2ServiceModel.data)
    }
}

//
//  Feature1ViewController.swift
//  ModularisationStarter
//
//  Created by Sashen Singh on 2022/10/01.
//

import Foundation
import UIKit
import Feature1Presentation

public final class Feature1ViewController: UIViewController {

    private var viewModel: Feature1ViewModel
    private let dataLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    init(viewModel: Feature1ViewModel) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        view.backgroundColor = .red

        addLabel()
        bindToViewModel()
        viewModel.loadData()
    }

    private func bindToViewModel() {
        viewModel.stateChanged = { [weak self] state in
            guard let self = self else { return }

            switch state {
            case .initial:
                break
            case .loadedData(let data):
                self.dataLabel.text = data
            }
        }
    }

    private func addLabel() {
        view.addSubview(dataLabel)
        dataLabel.translatesAutoresizingMaskIntoConstraints = false
        dataLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        dataLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

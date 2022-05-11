//
//  LaunchViewController.swift
//  Find
//
//  Created by A. Zheng (github.com/aheze) on 4/16/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import RealityKit
import SwiftUI

class LaunchViewController: UIViewController {
    var model: LaunchViewModel

    lazy var sceneView: ARView? = ARView()
    var baseEntity: ModelEntity?
    var camera: PerspectiveCamera?

    init(model: LaunchViewModel) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        /**
         Instantiate the base `view`.
         */
        view = UIView()
        view.backgroundColor = .clear
        setupScene()
    }
}

struct LaunchViewControllerRepresentable: UIViewControllerRepresentable {
    @ObservedObject var model: LaunchViewModel

    func makeUIViewController(context: Context) -> LaunchViewController {
        LaunchViewController(model: model)
    }

    func updateUIViewController(_ uiViewController: LaunchViewController, context: Context) {}
}

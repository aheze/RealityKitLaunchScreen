//
//  Utilities.swift
//  RealityKitLaunchScreen
//
//  Created by A. Zheng (github.com/aheze) on 5/10/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import UIKit

extension UIView {
    func pinEdgesToSuperview(padding: UIEdgeInsets = .zero) {
        guard let superview = superview else { return }
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: superview.topAnchor, constant: padding.top),
            self.rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -padding.right),
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -padding.bottom),
            self.leftAnchor.constraint(equalTo: superview.leftAnchor, constant: padding.left)
        ])
    }
}

extension BinaryInteger {
    var degreesToRadians: CGFloat { CGFloat(self) * .pi / 180 }
    var asRadians: Float { Float(self) * .pi / 180 } /// degrees to radians, for RealityKit
}

extension FloatingPoint {
    var degreesToRadians: Self { self * .pi / 180 }
    var radiansToDegrees: Self { self * 180 / .pi }
}

extension UIColor {
    convenience init(hex: UInt, alpha: CGFloat = 1) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}

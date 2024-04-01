//
//  RDViewCoding.swift
//  RDComponents
//
//  Created by Regis Araujo Melo on 31/03/24.
//

import UIKit

public protocol RDViewAccessible {
    func configureAccessibility()
    func buildAccessibility()
    func updateAccessibility()
}

public extension RDViewAccessible where Self: UIView {

    func configureAccessibility() {
        createIdentifierToChildren()
    }

}

public protocol RDViewCoding: RDViewAccessible {
    func configure()
    func buildHierarchy()
    func buildConstraints()
    func render()
    func setupView()
}

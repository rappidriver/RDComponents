//
//  UIView+CreateIdentifier.swift
//  RDComponents
//
//  Created by Regis Araujo Melo on 31/03/24.
//

import UIKit

public extension UIView {

    func createIdentifierToChildren() {
        let superMirror = Mirror(reflecting: self).children
        superMirror.forEach { child in
            guard let value = child.value as? UIView else {
                return
            }
            value.accessibilityIdentifier = child.label
        }
    }

}

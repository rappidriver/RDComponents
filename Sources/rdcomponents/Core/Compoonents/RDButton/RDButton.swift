//
//  RDButton.swift
//  RDComponents
//
//  Created by Regis Araujo Melo on 29/03/24.
//

import UIKit

public enum RDButtonVariant {
    case primary
    case secondary
}

final public class RDButton: UIButton {
    
    private var variant: RDButtonVariant = .primary
    
    // MARK: - Initialize
    
    public convenience init(variant: RDButtonVariant) {
        self.init(frame: .zero)
        self.variant = variant
        self.setupComponent()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.bounds.height / 2
    }
    
    // MARK: - Private Methods
    
    private func setupComponent() {
        switch variant {
        case .primary:
            self.backgroundColor = RDComponentsAssets.Colors.primary.color
            self.setTitleColor(.white, for: .normal)
        case .secondary:
            self.backgroundColor = .white
            self.layer.borderColor = RDComponentsAssets.Colors.primary.color.cgColor
            self.layer.borderWidth = 1.0
            self.setTitleColor(RDComponentsAssets.Colors.primary.color, for: .normal)
        }
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.25
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowRadius = 4
    }
    
}

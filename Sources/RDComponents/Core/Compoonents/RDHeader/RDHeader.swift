//
//  RDHeader.swift
//  RDComponents
//
//  Created by Regis Araujo Melo on 29/03/24.
//

import UIKit

public final class RDHeader: UIView {
    
    // MARK: - Private property
    
    private var titleHeader: String = String()
    private var subTitleHeader: String = String()
    
    private lazy var imageBackgroundView: UIImageView = {
        let background = UIImageView()
        background.contentMode = .scaleAspectFill
        background.clipsToBounds = true
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    private lazy var imageOverheadView: UIImageView = {
        let background = UIImageView()
        background.contentMode = .scaleAspectFill
        background.clipsToBounds = true
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    private lazy var headerTitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }
    
    public convenience init(title: String = String(), subtitle: String = String()) {
        self.init(frame: .zero)
        self.titleHeader = title
        self.subTitleHeader = subtitle
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    public override var intrinsicContentSize: CGSize {
        return imageBackgroundView.image?.size ?? CGSize.zero
    }
    
    // MARK: - Public method
    
    public func setBackgroundImage(_ image: UIImage) {
        imageBackgroundView.image = image
        invalidateIntrinsicContentSize() // Invalidate intrinsic content size to trigger layout updates
    }
    
    public func setTitle(_ title: String) {
        self.titleHeader = title
        self.headerTitleLabel.text = title
    }
    
    public func setsubtitleLabel(_ subtitle: String) {
        self.subTitleHeader = subtitle
        self.subtitleLabel.text = subtitle
    }
    
    // MARK: - Private methods
    
    private func setupUI() {
        // Adicionar visualizações à hierarquia de visualização
        addSubview(imageBackgroundView)
        addSubview(imageOverheadView)
        addSubview(headerTitleLabel)
        addSubview(subtitleLabel)

        imageBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        setBackgroundImage(RDComponentsAssets.Base.gradientBg.image)
        NSLayoutConstraint.activate([
            imageBackgroundView.topAnchor.constraint(equalTo: topAnchor),
            imageBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageBackgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
        imageOverheadView.translatesAutoresizingMaskIntoConstraints = false
        imageOverheadView.image = RDComponentsAssets.Base.dotsVector.image
        NSLayoutConstraint.activate([
            imageOverheadView.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            imageOverheadView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            imageOverheadView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 32),
        ])
        
        headerTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        headerTitleLabel.text = self.titleHeader
        NSLayoutConstraint.activate([
            headerTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            headerTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
        
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: headerTitleLabel.bottomAnchor, constant: 8),
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
    
}

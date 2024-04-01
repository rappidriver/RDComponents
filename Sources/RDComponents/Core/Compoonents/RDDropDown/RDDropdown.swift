//
//  RDDropdown.swift
//  RDComponents
//
//  Created by Regis Araujo Melo on 31/03/24.
//

import UIKit

public class RDDropdown: UIControl {
    
    // MARK: - Properties
    
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = RDComponentsAssets.Colors.primary.color
        view.layer.cornerRadius = 30
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.clipsToBounds = true
        return view
    }()
    
    private let leftIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        // Configurar o texto à esquerda do ícone
        label.text = "GO 4 mins away"
        return label
    }()
    
    private let valueLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "$ 9.60"
        label.textColor = .white
        return label
    }()
    
    private let rightArrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    // MARK: - Initialization
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        // Adicionar subviews ao container view
        containerView.addSubview(leftIconImageView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(valueLabel)
        containerView.addSubview(rightArrowImageView)

        addSubview(containerView)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 60)
        ])

        leftIconImageView.image = RDComponentsAssets.Base.carDropdown.image
        leftIconImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leftIconImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor), // Centralizar verticalmente
            leftIconImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, 
                                                       constant: 24),
            leftIconImageView.heightAnchor.constraint(equalToConstant: 32),
            leftIconImageView.widthAnchor.constraint(equalToConstant: 32) // Defina a largura da imagem
        ])
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor), // Centralizar verticalmente
            titleLabel.leadingAnchor.constraint(equalTo: leftIconImageView.trailingAnchor, constant: 16),

        ])
        
        rightArrowImageView.image = RDComponentsAssets.Base.dropdownIcon.image
        rightArrowImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rightArrowImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor), // Centralizar verticalmente
            rightArrowImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,
                                                          constant: -32),
            rightArrowImageView.heightAnchor.constraint(equalToConstant: 8),
            rightArrowImageView.widthAnchor.constraint(equalToConstant: 8) // Defina a largura da imagem
        ])
        
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            valueLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor), // Centralizar verticalmente
            valueLabel.trailingAnchor.constraint(equalTo: rightArrowImageView.leadingAnchor, constant: -16),

        ])
        
        // Configurar gesto de toque para exibir a lista de opções
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapDropdown(_:)))
        containerView.addGestureRecognizer(tapGesture)
    }
    
    // MARK: - Actions
    
    @objc private func didTapDropdown(_ sender: UITapGestureRecognizer) {
        // Implementar lógica para exibir a lista de opções quando o dropdown for tocado
        // Por exemplo, você pode apresentar um UIAlertController com as opções para o usuário selecionar
    }
    
}

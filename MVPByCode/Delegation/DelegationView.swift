//
//  DelegationView.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 29/10/21.
//

import Foundation
import UIKit

class DelegationView: UIView {
    
    var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Delega"
        label.font = .boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var descriprionLabel: UILabel = {
        let label = UILabel()
        label.text = "Compila i campi sottostanti con le informazioni riguardanti la persona che vuoi delegare."
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis  = .vertical
        stackView.distribution  = .equalSpacing
        stackView.spacing = 24
        return stackView
    }()
    
    var secondStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis  = .horizontal
        stackView.distribution  = .fillProportionally
        stackView.spacing = 8
        return stackView
    }()
    
    var nametxtField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "First name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
        
    }()
    
    
    var surnametxtField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Last name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
        
    }()
    
    var emailtxtField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Email"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
        
    }()
    
    var cardtxtField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Carta d'identità"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
        
    }()
    
    var prefixTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Prefix"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var phoneTxtField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Phone"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var sendButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Send", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        configureUI()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriprionLabel)
        contentView.addSubview(nametxtField)
        contentView.addSubview(surnametxtField)
        contentView.addSubview(cardtxtField)
        contentView.addSubview(emailtxtField)
        contentView.addSubview(mainStackView)
        mainStackView.addArrangedSubview(nametxtField)
        mainStackView.addArrangedSubview(surnametxtField)
        mainStackView.addArrangedSubview(cardtxtField)
        mainStackView.addArrangedSubview(emailtxtField)
        secondStackView.addArrangedSubview(prefixTextField)
        secondStackView.addArrangedSubview(phoneTxtField)
        mainStackView.addArrangedSubview(secondStackView)
        contentView.addSubview(sendButton)
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            contentView.widthAnchor.constraint(equalTo: widthAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            
            descriprionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            descriprionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            descriprionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            
            mainStackView.topAnchor.constraint(equalTo: descriprionLabel.bottomAnchor, constant: 20),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            sendButton.topAnchor.constraint(equalTo: mainStackView.bottomAnchor, constant: 20),
            sendButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            sendButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            sendButton.heightAnchor.constraint(equalToConstant: 70),
            sendButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -120)
            
            
        ])
    }
}




#if DEBUG

import SwiftUI

@available(iOS 13, *)

struct DelegationView_Previews: PreviewProvider {
    static var previews: some View {
       DelegationView().makePreview().previewLayout(.fixed(width: 414, height: 600))
    }
}
#endif

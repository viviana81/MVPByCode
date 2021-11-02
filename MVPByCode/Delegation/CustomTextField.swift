//
//  CustomTextField.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 02/11/21.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    var thinView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    var textPadding = UIEdgeInsets(
            top: 10,
            left: 20,
            bottom: 10,
            right: 20
        )

        override func textRect(forBounds bounds: CGRect) -> CGRect {
            let rect = super.textRect(forBounds: bounds)
            return rect.inset(by: textPadding)
        }

        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            let rect = super.editingRect(forBounds: bounds)
            return rect.inset(by: textPadding)
        }
    
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .systemGray6
        configureUI()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        self.addSubview(thinView)
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
        
            thinView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            thinView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            thinView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            thinView.heightAnchor.constraint(equalToConstant: 1),
            heightAnchor.constraint(equalToConstant: 55)
        ])
        
    }
}

//
//  MainView.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 26/10/21.
//

import UIKit

class MainView: UIView {
    
    
    var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        label.text = "Ciao gatto"
        label.textAlignment = .center
        label.layer.cornerRadius = 5
        label.layer.borderWidth = 1
        label.clipsToBounds = true

        return label
    }()
    
    var changeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Change color", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    var textfield: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Ciaone"
        textfield.backgroundColor = .lightGray
        return textfield
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
        addSubview(backgroundView)
        addSubview(changeButton)
        backgroundView.addSubview(mainLabel)
        
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            
            backgroundView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            backgroundView.heightAnchor.constraint(equalToConstant: 250),
          
            changeButton.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 20),
            changeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            changeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            changeButton.heightAnchor.constraint(equalToConstant: 50),
            
            //       per posizionarla al centro
          /*  mainLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor, constant: 0),
             mainLabel.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor, constant: 0),
             mainLabel.heightAnchor.constraint(equalToConstant: 50),
            mainLabel.widthAnchor.constraint(equalToConstant: 100)*/
            
     // per vincolarla alla view
            mainLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 60),
            mainLabel.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 60),
            mainLabel.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -60),
            mainLabel.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -60)
            
        ])
      
    }
}



#if DEBUG

import SwiftUI

@available(iOS 13, *)

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
       MainView().makePreview().previewLayout(.fixed(width: 414, height: 600))
    }
}
#endif

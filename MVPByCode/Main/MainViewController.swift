//
//  ViewController.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 26/10/21.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {
    
    var mainView: MainView? {
        return view as? MainView
    }
    
    let presenter: ViewPresenter
    
    init(presenter: ViewPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = MainView()
    }

  
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openNext))
        
        presenter.reloadView =  { [weak self] in
            self?.mainView?.mainLabel.text = self?.presenter.labelText
            self?.mainView?.backgroundView.backgroundColor = self?.presenter.backgroundColor
            self?.mainView?.changeButton.backgroundColor = self?.presenter.changeButtonColor
        }
    }
    
    private func configureUI() {
        mainView?.changeButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
    }
    
    @objc
    func changeColor() {
        presenter.switchColor()
    }
    
    @objc
    func openNext() {
        let delPresenter = DelegationViewPresenter()
        let delegation = DelegationViewController(presenter: delPresenter)
        navigationController?.pushViewController(delegation, animated: true)
    }
}


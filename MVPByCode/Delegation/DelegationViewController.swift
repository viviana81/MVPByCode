//
//  DelegationViewController.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 29/10/21.
//

import UIKit

class DelegationViewController: UIViewController {
    
    var delegationView: DelegationView? {
        return view as? DelegationView
    }
    
    var presenter: DelegationViewPresenter
    
    init(presenter: DelegationViewPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = DelegationView()
       
    }
    override func viewDidLoad() {
        
        title = presenter.navigationTitle
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: presenter.navigationButtonTitle, style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.tintColor = presenter.navigationButtonColor
    }
}

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
    
    lazy var countriesPicker: UIPickerView = {
        let picker = UIPickerView()
        picker.delegate = self
        picker.dataSource = self
        return picker
    }()
    
    override func loadView() {
        view = DelegationView()
       
    }
    override func viewDidLoad() {
        
        title = presenter.navigationTitle
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: presenter.navigationButtonTitle, style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.tintColor = presenter.navigationButtonColor
        delegationView?.prefixTextField.inputView = countriesPicker
        
    }
}

extension DelegationViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return presenter.countries?.count ?? 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        guard let countries = presenter.countries else { return nil }
        let country = countries[row]
        return country.pickerTitle
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        guard let countries = presenter.countries else { return }
        let country = countries[row]
        delegationView?.prefixTextField.text = country.pickerTitle
        self.view.endEditing(true)
        
    }
}

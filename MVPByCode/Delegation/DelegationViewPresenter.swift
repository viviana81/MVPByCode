//
//  DelegationViewPresenter.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 29/10/21.
//

import Foundation
import UIKit

class DelegationViewPresenter {
    
    var countries: [Country]?
    
    var navigationTitle: String {
        
        return "mylime"
    }
    
    var navigationButtonColor: UIColor {
        return .black
    }
    
    var navigationButtonTitle: String {
        return ""
    }
    
    init() {
        countries = CountriesStore.shared.countries
    }
}

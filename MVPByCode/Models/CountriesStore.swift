//
//  CountriesStore.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 03/11/21.
//

import Foundation

class CountriesStore {
    
    static var shared = CountriesStore()
    let countries: [Country]
    
    private init() {
        let mock = MockMapOperation<[Country]>()
        countries = mock.decode(from: "countries") ?? []
    }
}

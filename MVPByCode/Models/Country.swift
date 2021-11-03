//
//  Country.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 03/11/21.
//

import Foundation

struct Country: Codable {
    let code: String?
    let emoji: String?
    let unicode: String?
    let name: String?
    let title: String?
    let dialCode:String?
    
    var pickerTitle: String? {
        guard let emoji = emoji, let dialCode = dialCode, let name = name else {
            return ""
        }
 
        return "\(emoji) (\(dialCode)) \(name)"
    }
}

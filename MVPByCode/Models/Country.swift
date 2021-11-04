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
        
        var output = ""
        
        if let emoji = emoji {
            output += emoji
        }
        
        if let dialCode = dialCode {
            output += " (\(dialCode))"
        }
        
        if let name = name {
            output += " \(name)"
        }
        
        return output
    }
    
    var pickerDescription: String? {
        
        var output = ""
        if let emoji = emoji {
            output += emoji
        }
        
        if let dialCode = dialCode {
            output += " \(dialCode)"
        }
        
        return output
    }
}

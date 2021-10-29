//
//  ViewPresenter.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 26/10/21.
//

import Foundation
import UIKit


class ViewPresenter {
    
    enum State {
        case redColor
        case blueColor
    }
    
    var state: State = .blueColor {
        didSet {
            reloadView?()
        }
    }
    
    
    var reloadView: (() -> Void)?
    
    var labelText: String {
        
        switch state {
        case .blueColor:
            return "Ciao gatto"
        case .redColor:
            return "Ciao gattaccione"
        }
    }
    
    var backgroundColor: UIColor {
        
        switch state {
        case .redColor:
            return .red
        case .blueColor:
            return .blue
        }
    }
    
    var changeButtonColor: UIColor {
        
        switch state {
        case .redColor:
            return .blue
        case .blueColor:
            return .red
        }
    }
    
    func switchColor() {
        state = state == .blueColor ? .redColor : .blueColor
    }
}

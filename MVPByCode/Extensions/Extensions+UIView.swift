//
//  Extensions+UIView.swift
//  MVPByCode
//
//  Created by Viviana Capolvenere on 26/10/21.
//

import UIKit
import SwiftUI

extension UIView {
    private struct Preview<View: UIView>: UIViewRepresentable {
        // MARK: - Properties
        let view: View
        // MARK: - Methods
        func makeUIView(context: Context) -> View { view }
        func updateUIView(_ uiView: View, context: Context) {}
    }
    func makePreview() -> some View {
        Preview(view: self)
    }
}

